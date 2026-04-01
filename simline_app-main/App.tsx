import { useEffect, useState } from "react";
import { StatusBar } from "react-native";

import { theme } from "./src/constants/colors";
import HomeScreen from "./src/screens/HomeScreen";
import WelcomeScreen from "./src/screens/WelcomeScreen";

export default function App() {
  const [showSplash, setShowSplash] = useState(true);

  useEffect(() => {
    const timer = setTimeout(() => {
      setShowSplash(false);
    }, 1000);

    return () => {
      clearTimeout(timer);
    };
  }, []);

  return (
    <>
      <StatusBar barStyle="light-content" backgroundColor={theme.surface} />
      {showSplash ? <WelcomeScreen /> : <HomeScreen />}
    </>
  );
}
