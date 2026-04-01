
class Position {
  final double x; // meters from left edge
  final double y; // meters from top edge

  Position({required this.x, required this.y});

  Position copyWith({double? x, double? y}) {
    return Position(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }

  // Linear interpolation between two positions
  static Position lerp(Position a, Position b, double t) {
    return Position(
      x: a.x + (b.x - a.x) * t,
      y: a.y + (b.y - a.y) * t,
    );
  }
}

enum Team { attack, defence }

class Player {
  final int id;
  final int number;
  final Team team;
  final Position startPosition;

  Player({
    required this.id,
    required this.number,
    required this.team,
    required this.startPosition,
  });
}

class Keyframe {
  final double time; // seconds from start
  final Map<int, Position> positions; // player id -> position

  Keyframe({
    required this.time,
    required this.positions,
  });
}

class LineoutPlay {
  final String id;
  final String name;
  final String description;
  final double duration; // total duration in seconds
  final List<Player> players;
  final List<Keyframe> keyframes;

  LineoutPlay({
    required this.id,
    required this.name,
    required this.description,
    required this.duration,
    required this.players,
    required this.keyframes,
  });

  // Get interpolated positions at a specific time
  Map<int, Position> getPositionsAt(double currentTime) {
    if (keyframes.isEmpty) return {};

    // Find surrounding keyframes
    Keyframe prevKeyframe = keyframes.first;
    Keyframe nextKeyframe = keyframes.last;

    for (int i = 0; i < keyframes.length - 1; i++) {
      if (currentTime >= keyframes[i].time && 
          currentTime < keyframes[i + 1].time) {
        prevKeyframe = keyframes[i];
        nextKeyframe = keyframes[i + 1];
        break;
      }
    }

    // Calculate interpolation progress
    final timeDiff = nextKeyframe.time - prevKeyframe.time;
    final progress = timeDiff == 0 ? 0.0 : (currentTime - prevKeyframe.time) / timeDiff;

    // Interpolate positions for all players
    final Map<int, Position> interpolatedPositions = {};
    
    for (var player in players) {
      final prevPos = prevKeyframe.positions[player.id] ?? player.startPosition;
      final nextPos = nextKeyframe.positions[player.id] ?? player.startPosition;
      
      interpolatedPositions[player.id] = Position.lerp(prevPos, nextPos, progress);
    }

    return interpolatedPositions;
  }
}
