import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:simline/constants/app_constants.dart';
import 'package:simline/features/home/presentation/home_screen.dart';
import 'package:simline/networks/dio/dio.dart';
import 'package:simline/features/splash/presentation/welcome_screen.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await setInitValue();
    bool data = appData.read(kKeyIsLoggedIn) ?? false;
    log("==== $data");
    if (data) {
      String token = appData.read(kKeyAccessToken);
      DioSingleton.instance.update(token);
    }
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const WelcomeScreen();
    } else {
      return const HomeScreen();
      //  return appData.read(kKeyIsLoggedIn)
      //      ? const NavigationScreen()
      //      : const LoginScreen();
    }
  }
}
