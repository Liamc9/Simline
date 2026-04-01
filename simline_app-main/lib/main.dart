// ignore_for_file: deprecated_member_use, unused_import, prefer_const_constructors

import 'dart:developer';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:simline/constants/app_constants.dart';
import 'package:simline/constants/custome_theme.dart';
import 'package:simline/gen/colors.gen.dart';
import 'package:simline/helpers/all_routes.dart';
import 'package:simline/helpers/di.dart';
import 'package:simline/helpers/helper_methods.dart';
import 'package:simline/helpers/language.dart';
import 'package:simline/helpers/navigation_service.dart';
import 'package:simline/helpers/register_provider.dart';
import 'package:simline/loading_screen.dart';
import 'package:simline/networks/dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  diSetup();
  initiInternetChecker();
  DioSingleton.instance.create();
  try {
    await FlutterDisplayMode.setHighRefreshRate();
  } catch (e) {
    log('Error setting high refresh rate: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String language = appData.read(kKeyLanguage) ?? 'en';
    String countryCode = appData.read(kKeyCountryCode) ?? 'US';
    return ScreenUtilInit(
      designSize: const Size(414, 826),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.cffffff,
              primarySwatch: CustomTheme.kToDark,
              useMaterial3: false,
            ),
            debugShowCheckedModeBanner: false,
            translations: LocalString(),
            locale: Locale(language, countryCode),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: const Loading(),
          ),
        );
      },
    );
  }
}
