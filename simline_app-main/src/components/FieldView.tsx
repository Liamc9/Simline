import { useEffect, useState } from "react";
import {
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from "react-native";

import { theme } from "../constants/colors";
import {
  formationPresets,
  FormationName,
  FormationTypeId,
  getAnimationOffset,
  playerNumbers,
} from "../constants/formations";
import PlayerBadge from "./PlayerBadge";

type FieldViewProps = {
  isPlaying: boolean;
  speed: number;
  resetSignal: number;
  selectedFormation: FormationName | null;
  formationType: FormationTypeId | null;
};

const distanceMarkers = [5, 7, 10, 13, 15];

export default function FieldView({
  isPlaying,
  speed,
  resetSignal,
  selectedFormation,
  formationType,
}: FieldViewProps) {
  const { width } = useWindowDimensions();
  const [currentTime, setCurrentTime] = useState(0);

  const fieldWidth = Math.min(width - 32, 460);
  const pixelsPerMeter = fieldWidth / 18;
  const fieldHeight = 18 * pixelsPerMeter;
  const formation = selectedFormation ? formationPresets[selectedFormation] : null;

  useEffect(() => {
    setCurrentTime(0);
  }, [selectedFormation, resetSignal]);

  useEffect(() => {
    if (!isPlaying || !formation) {
      return;
    }

    let frame = 0;
    let lastTime = Date.now();

    const tick = () => {
      const now = Date.now();
      const delta = (now - lastTime) / 1000;
      lastTime = now;

      setCurrentTime((previousTime) => (previousTime + delta * speed) % 5);
      frame = requestAnimationFrame(tick);
    };

    frame = requestAnimationFrame(tick);

    return () => {
      cancelAnimationFrame(frame);
    };
  }, [formation, isPlaying, speed]);

  if (!formation) {
    return (
      <View style={[styles.placeholder, { minHeight: Math.max(fieldHeight, 320) }]}>
        <Text style={styles.placeholderTitle}>Select a formation</Text>
        <Text style={styles.placeholderText}>
          Choose a formation above to view the rugby lineout animation.
        </Text>
      </View>
    );
  }

  return (
    <View
      style={[
        styles.field,
        {
          width: fieldWidth,
          height: fieldHeight,
        },
      ]}
    >
      <View style={[styles.mainLine, { left: pixelsPerMeter * 1.35 }]} />
      <View style={[styles.startLine, { left: 5 * pixelsPerMeter }]} />

      {distanceMarkers.map((marker) => (
        <View
          key={marker}
          style={[styles.marker, { left: marker * pixelsPerMeter }]}
        >
          <View style={styles.markerLine} />
          <Text style={styles.markerLabel}>{marker} m</Text>
        </View>
      ))}

      {Array.from({ length: formation.numberOfPlayers }, (_, index) => {
        const spacing =
          formation.numberOfPlayers === 1
            ? 0
            : (15 - 5) / (formation.numberOfPlayers - 1);
        const baseXMeter = 5 + index * spacing;
        const animatedOffset = getAnimationOffset(
          index,
          formation.numberOfPlayers,
          currentTime,
          formationType
        );
        const finalXMeter = Math.max(5, Math.min(15, baseXMeter + animatedOffset));
        const left = finalXMeter * pixelsPerMeter;
        const top = formation.startY * pixelsPerMeter;

        return (
          <View
            key={`${selectedFormation}-${index}`}
            style={[
              styles.playerWrap,
              {
                left,
                top,
              },
            ]}
          >
            <PlayerBadge number={playerNumbers[index]} />
          </View>
        );
      })}
    </View>
  );
}

const styles = StyleSheet.create({
  placeholder: {
    width: "100%",
    borderRadius: 22,
    borderWidth: 1,
    borderColor: theme.border,
    backgroundColor: theme.surface,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 28,
  },
  placeholderTitle: {
    color: theme.text,
    fontSize: 22,
    fontWeight: "700",
    marginBottom: 10,
  },
  placeholderText: {
    color: theme.mutedText,
    fontSize: 15,
    lineHeight: 22,
    textAlign: "center",
  },
  field: {
    alignSelf: "center",
    borderRadius: 22,
    borderWidth: 2,
    borderColor: theme.fieldBorder,
    backgroundColor: theme.field,
    shadowColor: theme.shadow,
    shadowOffset: { width: 0, height: 10 },
    shadowOpacity: 0.28,
    shadowRadius: 18,
    elevation: 8,
    overflow: "hidden",
  },
  mainLine: {
    position: "absolute",
    top: 0,
    bottom: 0,
    width: 3,
    backgroundColor: "rgba(255, 255, 255, 0.82)",
  },
  startLine: {
    position: "absolute",
    top: 0,
    bottom: 0,
    width: 2,
    backgroundColor: "rgba(255, 255, 255, 0.56)",
  },
  marker: {
    position: "absolute",
    top: 0,
    alignItems: "center",
    transform: [{ translateX: -12 }],
  },
  markerLine: {
    width: 2,
    height: 22,
    backgroundColor: "rgba(255, 255, 255, 0.6)",
    marginBottom: 6,
  },
  markerLabel: {
    color: theme.text,
    fontSize: 12,
    fontWeight: "700",
    paddingHorizontal: 8,
    paddingVertical: 4,
    borderRadius: 999,
    backgroundColor: "rgba(2, 6, 23, 0.28)",
  },
  playerWrap: {
    position: "absolute",
    transform: [{ translateX: -21 }, { translateY: -21 }],
  },
});
