import { Alert, Platform, ToastAndroid } from "react-native";

function showToast(message: string, isLong = false) {
  if (Platform.OS === "android") {
    ToastAndroid.show(message, isLong ? ToastAndroid.LONG : ToastAndroid.SHORT);
    return;
  }

  Alert.alert("Simline", message);
}

export const toast = {
  showLong(message: string) {
    showToast(message, true);
  },
  showShort(message: string) {
    showToast(message);
  },
  showNoInternet() {
    showToast("Please check your internet connection");
  },
  showNotLoggedIn() {
    showToast("Please login to perform this operation");
  },
};
