import { Pressable, StyleSheet, Text, View } from "react-native";

import { theme } from "../constants/colors";

type ControlPanelProps = {
  isPlaying: boolean;
  speed: number;
  onPlayPause: () => void;
  onReset: () => void;
  onSpeedChange: (value: number) => void;
};

const speedOptions = [0.5, 1.0, 1.5];

export default function ControlPanel({
  isPlaying,
  speed,
  onPlayPause,
  onReset,
  onSpeedChange,
}: ControlPanelProps) {
  return (
    <View style={styles.panel}>
      <View style={styles.actions}>
        <Pressable
          onPress={onPlayPause}
          style={[styles.actionButton, styles.playButton]}
        >
          <Text style={styles.actionLabel}>{isPlaying ? "Pause" : "Play"}</Text>
        </Pressable>

        <Pressable
          onPress={onReset}
          style={[styles.actionButton, styles.resetButton]}
        >
          <Text style={styles.actionLabel}>Reset</Text>
        </Pressable>
      </View>

      <View style={styles.speedBlock}>
        <Text style={styles.speedLabel}>Speed</Text>
        <View style={styles.speedRow}>
          {speedOptions.map((value) => {
            const isSelected = speed === value;
            return (
              <Pressable
                key={value}
                onPress={() => onSpeedChange(value)}
                style={[
                  styles.speedButton,
                  isSelected && styles.speedButtonSelected,
                ]}
              >
                <Text
                  style={[
                    styles.speedText,
                    isSelected && styles.speedTextSelected,
                  ]}
                >
                  {value.toFixed(1)}x
                </Text>
              </Pressable>
            );
          })}
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  panel: {
    borderRadius: 18,
    borderWidth: 1,
    borderColor: theme.border,
    backgroundColor: theme.surface,
    padding: 20,
  },
  actions: {
    flexDirection: "row",
    justifyContent: "center",
    marginBottom: 18,
  },
  actionButton: {
    minWidth: 112,
    borderRadius: 999,
    paddingHorizontal: 20,
    paddingVertical: 14,
    alignItems: "center",
    justifyContent: "center",
    marginHorizontal: 8,
  },
  playButton: {
    backgroundColor: theme.brandStrong,
  },
  resetButton: {
    backgroundColor: theme.surfaceMuted,
  },
  actionLabel: {
    color: theme.text,
    fontSize: 16,
    fontWeight: "700",
  },
  speedBlock: {
    alignItems: "center",
  },
  speedLabel: {
    color: theme.mutedText,
    fontSize: 13,
    fontWeight: "600",
    marginBottom: 10,
  },
  speedRow: {
    flexDirection: "row",
    flexWrap: "wrap",
    justifyContent: "center",
  },
  speedButton: {
    minWidth: 72,
    borderRadius: 12,
    backgroundColor: theme.surfaceMuted,
    paddingHorizontal: 14,
    paddingVertical: 12,
    marginHorizontal: 4,
    marginVertical: 4,
    alignItems: "center",
  },
  speedButtonSelected: {
    backgroundColor: theme.brandStrong,
  },
  speedText: {
    color: theme.subtleText,
    fontSize: 14,
    fontWeight: "700",
  },
  speedTextSelected: {
    color: theme.text,
  },
});
