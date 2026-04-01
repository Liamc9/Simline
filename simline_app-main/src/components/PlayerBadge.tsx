import { StyleSheet, Text, View } from "react-native";

import { theme } from "../constants/colors";

type PlayerBadgeProps = {
  number: number;
};

export default function PlayerBadge({ number }: PlayerBadgeProps) {
  return (
    <View style={styles.player}>
      <Text style={styles.number}>{number}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  player: {
    width: 42,
    height: 42,
    borderRadius: 21,
    backgroundColor: theme.accent,
    borderWidth: 2,
    borderColor: theme.accentBorder,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: theme.shadow,
    shadowOffset: { width: 0, height: 3 },
    shadowOpacity: 0.4,
    shadowRadius: 6,
    elevation: 4,
  },
  number: {
    color: theme.text,
    fontSize: 16,
    fontWeight: "700",
  },
});
