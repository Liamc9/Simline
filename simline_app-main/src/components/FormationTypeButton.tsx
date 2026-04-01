import { Pressable, StyleSheet, Text } from "react-native";

import { theme } from "../constants/colors";

type FormationTypeButtonProps = {
  label: string;
  active: boolean;
  onPress: () => void;
};

export default function FormationTypeButton({
  label,
  active,
  onPress,
}: FormationTypeButtonProps) {
  return (
    <Pressable
      onPress={onPress}
      style={[styles.button, active && styles.buttonActive]}
    >
      <Text style={styles.label}>{label}</Text>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  button: {
    paddingHorizontal: 20,
    paddingVertical: 12,
    marginHorizontal: 4,
    marginVertical: 4,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: theme.brand,
    backgroundColor: theme.surface,
  },
  buttonActive: {
    borderColor: theme.brandStrong,
    backgroundColor: theme.brand,
  },
  label: {
    color: theme.text,
    fontSize: 15,
    fontWeight: "600",
  },
});
