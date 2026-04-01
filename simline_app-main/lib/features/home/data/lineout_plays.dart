import 'package:simline/features/home/model/lineout_play.dart';


class LineoutPlaysData {
  static List<LineoutPlay> getAllPlays() {
    return [
      _getFrontBall(),
      _getMiddlePeel(),
      _getBackBall(),
      _getQuickThrow(),
      _getDummyMiddle(),
      _getDoubleJumper(),
      _getBackDeflection(),
    ];
  }

  static LineoutPlay _getFrontBall() {
    return LineoutPlay(
      id: 'basic-front',
      name: 'Front Ball',
      description: 'Simple front-of-line throw to jumper #2',
      duration: 4.0,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        Player(id: 8, number: 11, team: Team.attack, startPosition: Position(x: 1, y: 16)),
        
        // Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        // Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        // Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        // Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        // Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
        // Player(id: 16, number: 8, team: Team.defence, startPosition: Position(x: 6, y: 20.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 6.2, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6.5, y: 8.5), 12: Position(x: 7, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 2.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 4.5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 4.8, y: 11),
          7: Position(x: 3.5, y: 11), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 23.6, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 4, y: 10.5), 3: Position(x: 4.5, y: 13),
          4: Position(x: 4.5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3.5, y: 9.5),
          7: Position(x: 2, y: 9.5), 11: Position(x: 6, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getMiddlePeel() {
    return LineoutPlay(
      id: 'middle-peel',
      name: 'Middle Ball with Peel',
      description: 'Middle throw to #5, front players peel off',
      duration: 5.0,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1.5, positions: {
          1: Position(x: 3.5, y: 7.5), 2: Position(x: 3.5, y: 10), 3: Position(x: 6.2, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 7, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 3, positions: {
          1: Position(x: 2, y: 6.5), 2: Position(x: 2, y: 9), 3: Position(x: 4.5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 4.5, y: 13.5),
          7: Position(x: 3, y: 13.5), 11: Position(x: 6, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 5, positions: {
          1: Position(x: 1, y: 5.5), 2: Position(x: 1, y: 8), 3: Position(x: 3.5, y: 13),
          4: Position(x: 4, y: 15.5), 5: Position(x: 4.5, y: 18), 6: Position(x: 3, y: 12),
          7: Position(x: 1.5, y: 12), 11: Position(x: 5.5, y: 8.5), 12: Position(x: 5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 5.5, y: 16), 15: Position(x: 6, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getBackBall() {
    return LineoutPlay(
      id: 'back-ball',
      name: 'Back Ball',
      description: 'Throw to the back jumper #7',
      duration: 4.5,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 6.2, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 7, y: 18.5),
        }),
        Keyframe(time: 2.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 4.5, y: 18), 6: Position(x: 4, y: 17),
          7: Position(x: 2.5, y: 17), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 4.5, positions: {
          1: Position(x: 4.5, y: 8), 2: Position(x: 4.5, y: 10.5), 3: Position(x: 4.5, y: 13),
          4: Position(x: 4.5, y: 15.5), 5: Position(x: 4, y: 18), 6: Position(x: 3.5, y: 16.5),
          7: Position(x: 2, y: 16.5), 11: Position(x: 6, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 5.5, y: 16), 15: Position(x: 5.5, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getQuickThrow() {
    return LineoutPlay(
      id: 'quick-throw',
      name: 'Quick Throw',
      description: 'Fast tempo throw to #4 with immediate drive',
      duration: 3.5,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 6.2, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 7, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 2, positions: {
          1: Position(x: 3.5, y: 8), 2: Position(x: 3.5, y: 10.5), 3: Position(x: 3.5, y: 13),
          4: Position(x: 3.5, y: 15.5), 5: Position(x: 3.5, y: 18), 6: Position(x: 4.5, y: 11.5),
          7: Position(x: 3, y: 11.5), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 3.5, positions: {
          1: Position(x: 2, y: 8), 2: Position(x: 2, y: 10.5), 3: Position(x: 2, y: 13),
          4: Position(x: 2, y: 15.5), 5: Position(x: 2, y: 18), 6: Position(x: 3, y: 10),
          7: Position(x: 1.5, y: 10), 11: Position(x: 5, y: 8.5), 12: Position(x: 5, y: 11),
          13: Position(x: 5, y: 13.5), 14: Position(x: 5, y: 16), 15: Position(x: 5, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getDummyMiddle() {
    return LineoutPlay(
      id: 'dummy-middle',
      name: 'Dummy Middle to Front',
      description: 'Fake middle lift, throw to front #2',
      duration: 5.0,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5.5, y: 10.5), 3: Position(x: 5.8, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6.5, y: 11),
          13: Position(x: 6.8, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 2, positions: {
          1: Position(x: 6.2, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5.5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 7, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6.5, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 3.5, positions: {
          1: Position(x: 4.5, y: 8), 2: Position(x: 4.5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 4.5, y: 9),
          7: Position(x: 3, y: 9), 11: Position(x: 6, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 5, positions: {
          1: Position(x: 3.5, y: 8), 2: Position(x: 3.5, y: 10.5), 3: Position(x: 4, y: 13),
          4: Position(x: 4, y: 15.5), 5: Position(x: 4.5, y: 18), 6: Position(x: 3, y: 7.5),
          7: Position(x: 1.5, y: 7.5), 11: Position(x: 5.5, y: 8.5), 12: Position(x: 5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 5.5, y: 16), 15: Position(x: 5.5, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getDoubleJumper() {
    return LineoutPlay(
      id: 'double-jumper',
      name: 'Double Jumper',
      description: 'Two simultaneous lifts - #4 and #6',
      duration: 4.0,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 6.2, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 6.2, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 7, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 7, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 2.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 4.5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 4.5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 4.5, y: 13.5),
          7: Position(x: 3, y: 13.5), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 4, positions: {
          1: Position(x: 4.5, y: 8), 2: Position(x: 3.5, y: 10.5), 3: Position(x: 4, y: 13),
          4: Position(x: 3.5, y: 15.5), 5: Position(x: 4.5, y: 18), 6: Position(x: 3.5, y: 12.5),
          7: Position(x: 2, y: 12.5), 11: Position(x: 5.5, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 5.5, y: 16), 15: Position(x: 5.5, y: 18.5),
        }),
      ],
    );
  }

  static LineoutPlay _getBackDeflection() {
    return LineoutPlay(
      id: 'back-deflection',
      name: 'Back Ball Deflection',
      description: 'Back throw to #7, deflect to #9',
      duration: 5.0,
      players: [
        Player(id: 1, number: 2, team: Team.attack, startPosition: Position(x: 5, y: 8)),
        Player(id: 2, number: 4, team: Team.attack, startPosition: Position(x: 5, y: 10.5)),
        Player(id: 3, number: 5, team: Team.attack, startPosition: Position(x: 5, y: 13)),
        Player(id: 4, number: 6, team: Team.attack, startPosition: Position(x: 5, y: 15.5)),
        Player(id: 5, number: 7, team: Team.attack, startPosition: Position(x: 5, y: 18)),
        Player(id: 6, number: 9, team: Team.attack, startPosition: Position(x: 3, y: 13)),
        Player(id: 7, number: 10, team: Team.attack, startPosition: Position(x: 1, y: 13)),
        
        Player(id: 11, number: 2, team: Team.defence, startPosition: Position(x: 6, y: 8.5)),
        Player(id: 12, number: 4, team: Team.defence, startPosition: Position(x: 6, y: 11)),
        Player(id: 13, number: 5, team: Team.defence, startPosition: Position(x: 6, y: 13.5)),
        Player(id: 14, number: 6, team: Team.defence, startPosition: Position(x: 6, y: 16)),
        Player(id: 15, number: 7, team: Team.defence, startPosition: Position(x: 6, y: 18.5)),
      ],
      keyframes: [
        Keyframe(time: 0, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 5, y: 18), 6: Position(x: 3, y: 13),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 1.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 6.2, y: 18), 6: Position(x: 3, y: 16.5),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 7, y: 18.5),
        }),
        Keyframe(time: 2.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 4.5, y: 18), 6: Position(x: 4.5, y: 18.5),
          7: Position(x: 1, y: 13), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 3.5, positions: {
          1: Position(x: 5, y: 8), 2: Position(x: 5, y: 10.5), 3: Position(x: 5, y: 13),
          4: Position(x: 5, y: 15.5), 5: Position(x: 4, y: 18), 6: Position(x: 3, y: 19),
          7: Position(x: 1.5, y: 19), 11: Position(x: 6, y: 8.5), 12: Position(x: 6, y: 11),
          13: Position(x: 6, y: 13.5), 14: Position(x: 6, y: 16), 15: Position(x: 6, y: 18.5),
        }),
        Keyframe(time: 5, positions: {
          1: Position(x: 4.5, y: 8), 2: Position(x: 4.5, y: 10.5), 3: Position(x: 4.5, y: 13),
          4: Position(x: 4.5, y: 15.5), 5: Position(x: 3.5, y: 18), 6: Position(x: 2.5, y: 18),
          7: Position(x: 1, y: 18), 11: Position(x: 5.5, y: 8.5), 12: Position(x: 5.5, y: 11),
          13: Position(x: 5.5, y: 13.5), 14: Position(x: 5.5, y: 16), 15: Position(x: 5.5, y: 18.5),
        }),
      ],
    );
  }
}
