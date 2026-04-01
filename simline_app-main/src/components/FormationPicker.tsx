import { useState } from "react";
import {
  Modal,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";

import { theme } from "../constants/colors";
import { FormationName } from "../constants/formations";

type FormationPickerProps = {
  options: readonly FormationName[];
  selectedValue: FormationName | null;
  onSelect: (value: FormationName) => void;
};

export default function FormationPicker({
  options,
  selectedValue,
  onSelect,
}: FormationPickerProps) {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <>
      <Pressable onPress={() => setIsOpen(true)} style={styles.trigger}>
        <Text
          style={[
            styles.triggerText,
            !selectedValue && styles.placeholderText,
          ]}
        >
          {selectedValue ?? "Select Formation"}
        </Text>
        <Text style={styles.chevron}>v</Text>
      </Pressable>

      <Modal
        animationType="fade"
        transparent
        visible={isOpen}
        onRequestClose={() => setIsOpen(false)}
      >
        <View style={styles.overlay}>
          <Pressable style={styles.backdrop} onPress={() => setIsOpen(false)} />
          <View style={styles.sheet}>
            <Text style={styles.sheetTitle}>Choose a formation</Text>
            {options.map((option) => {
              const isSelected = option === selectedValue;
              return (
                <Pressable
                  key={option}
                  onPress={() => {
                    onSelect(option);
                    setIsOpen(false);
                  }}
                  style={[
                    styles.option,
                    isSelected && styles.optionSelected,
                  ]}
                >
                  <Text
                    style={[
                      styles.optionText,
                      isSelected && styles.optionTextSelected,
                    ]}
                  >
                    {option}
                  </Text>
                </Pressable>
              );
            })}
          </View>
        </View>
      </Modal>
    </>
  );
}

const styles = StyleSheet.create({
  trigger: {
    minHeight: 52,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: theme.border,
    backgroundColor: theme.surface,
    paddingHorizontal: 16,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  triggerText: {
    color: theme.text,
    fontSize: 16,
    fontWeight: "600",
  },
  placeholderText: {
    color: theme.mutedText,
  },
  chevron: {
    color: theme.subtleText,
    fontSize: 16,
    fontWeight: "700",
  },
  overlay: {
    flex: 1,
    backgroundColor: theme.overlay,
    justifyContent: "center",
    paddingHorizontal: 20,
  },
  backdrop: {
    ...StyleSheet.absoluteFillObject,
  },
  sheet: {
    borderRadius: 20,
    backgroundColor: theme.surface,
    borderWidth: 1,
    borderColor: theme.border,
    padding: 20,
  },
  sheetTitle: {
    color: theme.text,
    fontSize: 18,
    fontWeight: "700",
    marginBottom: 16,
  },
  option: {
    borderRadius: 14,
    paddingHorizontal: 16,
    paddingVertical: 14,
    backgroundColor: theme.surfaceMuted,
    marginBottom: 10,
  },
  optionSelected: {
    backgroundColor: theme.brandStrong,
  },
  optionText: {
    color: theme.text,
    fontSize: 16,
    fontWeight: "600",
  },
  optionTextSelected: {
    color: theme.text,
  },
});
