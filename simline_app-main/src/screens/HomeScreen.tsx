import { useState } from "react";
import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  View,
} from "react-native";

import ControlPanel from "../components/ControlPanel";
import FieldView from "../components/FieldView";
import FormationPicker from "../components/FormationPicker";
import FormationTypeButton from "../components/FormationTypeButton";
import { theme } from "../constants/colors";
import {
  formationOptions,
  FormationName,
  formationTypeOptions,
  FormationTypeId,
} from "../constants/formations";

export default function HomeScreen() {
  const [isPlaying, setIsPlaying] = useState(false);
  const [speed, setSpeed] = useState(1);
  const [resetSignal, setResetSignal] = useState(0);
  const [selectedFormation, setSelectedFormation] = useState<FormationName | null>(
    null
  );
  const [formationType, setFormationType] = useState<FormationTypeId | null>(null);

  return (
    <SafeAreaView style={styles.safeArea}>
      <ScrollView
        contentContainerStyle={[
          styles.content,
          { paddingTop: StatusBar.currentHeight ?? 0 },
        ]}
      >
        <View style={styles.header}>
          <Text style={styles.title}>Rugby Lineout Simulator</Text>
          <Text style={styles.subtitle}>
            Tactical visualization and training tool
          </Text>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionLabel}>Formation</Text>
          <FormationPicker
            options={formationOptions}
            selectedValue={selectedFormation}
            onSelect={setSelectedFormation}
          />
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionLabel}>Formation Type</Text>
          <View style={styles.chipWrap}>
            {formationTypeOptions.map((option) => (
              <FormationTypeButton
                key={option.id}
                label={option.label}
                active={formationType === option.id}
                onPress={() => setFormationType(option.id)}
              />
            ))}
          </View>
        </View>

        <View style={styles.section}>
          <FieldView
            isPlaying={isPlaying}
            speed={speed}
            resetSignal={resetSignal}
            selectedFormation={selectedFormation}
            formationType={formationType}
          />
        </View>

        <ControlPanel
          isPlaying={isPlaying}
          speed={speed}
          onPlayPause={() => setIsPlaying((previous) => !previous)}
          onReset={() => {
            setIsPlaying(false);
            setResetSignal((previous) => previous + 1);
          }}
          onSpeedChange={setSpeed}
        />
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: theme.background,
  },
  content: {
    paddingHorizontal: 16,
    paddingBottom: 32,
  },
  header: {
    marginBottom: 22,
    borderRadius: 22,
    borderWidth: 1,
    borderColor: theme.border,
    backgroundColor: theme.surface,
    paddingHorizontal: 20,
    paddingVertical: 22,
  },
  title: {
    color: theme.text,
    fontSize: 28,
    fontWeight: "800",
    marginBottom: 8,
  },
  subtitle: {
    color: theme.mutedText,
    fontSize: 15,
    lineHeight: 22,
  },
  section: {
    marginBottom: 18,
  },
  sectionLabel: {
    color: theme.text,
    fontSize: 18,
    fontWeight: "700",
    marginBottom: 12,
  },
  chipWrap: {
    flexDirection: "row",
    flexWrap: "wrap",
    marginHorizontal: -4,
  },
});
