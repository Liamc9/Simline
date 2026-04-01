import {
  Image,
  SafeAreaView,
  StatusBar,
  StyleSheet,
  Text,
  View,
} from "react-native";

import { theme } from "../constants/colors";

const logo = require("../../assets/images/simlineLogo.png");

export default function WelcomeScreen() {
  return (
    <SafeAreaView
      style={[
        styles.safeArea,
        { paddingTop: StatusBar.currentHeight ?? 0 },
      ]}
    >
      <View style={styles.container}>
        <View style={styles.logoWrap}>
          <Image source={logo} style={styles.logo} resizeMode="contain" />
        </View>
        <Text style={styles.title}>Tactical Visualization & Training Tool</Text>
      </View>
      <View style={styles.bottomGlow} />
      <View style={styles.topGlow} />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: theme.brand,
  },
  container: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 24,
  },
  logoWrap: {
    width: 168,
    height: 168,
    borderRadius: 32,
    backgroundColor: "rgba(255, 255, 255, 0.08)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.14)",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 24,
  },
  logo: {
    width: 108,
    height: 116,
  },
  title: {
    color: theme.text,
    fontSize: 20,
    fontWeight: "700",
    textAlign: "center",
    lineHeight: 28,
    maxWidth: 320,
  },
  topGlow: {
    position: "absolute",
    top: -40,
    right: -30,
    width: 180,
    height: 180,
    borderRadius: 90,
    backgroundColor: "rgba(16, 185, 129, 0.16)",
  },
  bottomGlow: {
    position: "absolute",
    bottom: -50,
    left: -20,
    width: 220,
    height: 220,
    borderRadius: 110,
    backgroundColor: "rgba(255, 255, 255, 0.08)",
  },
});
