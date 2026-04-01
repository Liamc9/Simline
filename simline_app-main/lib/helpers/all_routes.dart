// ignore_for_file: unreachable_switch_case

import 'package:flutter/cupertino.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;
  static const String loading = '/loading';
  static const String categoryScreen = '/categoryScreen';
  static const String singleCategory = '/singleCategory';
  static const String categoryByJob = '/categoryByJob';
  static const String createProfileScreen = '/createProfileScreen';
  static const String jobDetails = '/jobDetails';
  static const String jobApply = '/jobApply';
  static const String verificationScreen = '/verificationScreen';
  static const String verificationConfirmScreen = '/verificationConfirmScreen';
  static const String loginScreen = '/loginScreen';
  static const String forgotPassword = '/forgotPassword';
  static const String otpVerificationScreen = '/otpVerificationScreen';
  static const String newPasswordScreen = '/newPasswordScreen';
  static const String navigation = '/navigation';
  static const String homeScreen = '/homeScreen';
  static const String createProfileAccountScreen =
      '/createProfileAccountScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String passwordSettingScreen = '/passwordSettingScreen';
  static const String notificationSettingScreen = '/notificationSettingScreen';
  static const String moreOptionScreen = '/moreOptionScreen';
  static const String termsConditionScreen = '/termsConditionScreen';
  static const String privacyPolicyScreen = '/privacyPolicyScreen';
  static const String helpScreen = '/helpScreen';
  static const String chatScreen = '/chatScreen';
  static const String passwordConfirmationScreen =
      '/passwordConfirmationScreen';
  static const String createJob = '/createJob';
  static const String serviceDetails = '/serviceDetails';
  static const String settings = '/settings';

  ////// Client Portion /////
  static const String clientCreateProfileScreen = '/clientCreateProfileScreen';
  static const String clientVerificationScreen = '/clientVerificationScreen';
  static const String clientVerificationConfirmScreen =
      '/clientVerificationConfirmScreen';
  static const String clientLoginScreen = '/clientLoginScreen';
  static const String clientForgotPasswordScreen =
      '/clientForgotPasswordScreen';
  static const String clientOtpVerificationScreen =
      '/clientOtpVerificationScreen';
  static const String clientNewPasswordScreen = '/clientNewPasswordScreen';
  static const String clientPasswordConfirmationScreen =
      '/clientPasswordConfirmationScreen';
  static const String clientNavigation = '/clientNavigation';
  static const String clientEditProfileScreen = '/clientEditProfileScreen';
  static const String clientPasswordSettingScreen =
      '/clientPasswordSettingScreen';
  static const String clientNotificationSettingScreen =
      '/clientNotificationSettingScreen';
  static const String clientMoreOptionScreen = '/clientMoreOptionScreen';
  static const String clientCreateJobScreen = '/clientCreateJobScreen';
  static const String clientJobDetailsScreen = '/clientJobDetailsScreen';
  static const String clientChatScreen = '/clientChatScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.settings:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: SettingScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const SettingScreen());
      // case Routes.serviceDetails:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //             widget: ServiceDetailsScreen(
      //               id: args['id'],
      //             ),
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => ServiceDetailsScreen(
      //             id: args['id'],
      //           ),
      //         );
      // case Routes.createJob:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: CreateJobScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const CreateJobScreen());
      // case Routes.jobApply:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: JobApplyScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const JobApplyScreen());
      // case Routes.jobDetails:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //             widget: JobDetailsScreen(
      //               id: args['id'],
      //             ),
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => JobDetailsScreen(
      //             id: args['id'],
      //           ),
      //         );
      // case Routes.categoryByJob:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //             widget: CategoryByJobScreen(
      //               id: args['id'],
      //             ),
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => CategoryByJobScreen(
      //             id: args['id'],
      //           ),
      //         );
      // case Routes.categoryScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: CategoryScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const CategoryScreen());
      // case Routes.singleCategory:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: SingleCategoryScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const SingleCategoryScreen());
      // case Routes.createProfileScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: CreateProfileScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const CreateProfileScreen());

      // case Routes.verificationScreen:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //               widget: VerificationScreen(
      //             email: args['email'],
      //             name: args['name'],
      //           )),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => VerificationScreen(
      //                 email: args['email'],
      //                 name: args['name'],
      //               ));

      // case Routes.verificationConfirmScreen:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //             widget: VerificationConfirmScreen(
      //               name: args['name'],
      //             ),
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => VerificationConfirmScreen(
      //             name: args['name'],
      //           ),
      //         );

      // case Routes.loginScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: LoginScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const LoginScreen());

      // case Routes.forgotPassword:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: ForgotPasswordScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const ForgotPasswordScreen());

      // case Routes.otpVerificationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: OtpVerificationScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const OtpVerificationScreen());

      // case Routes.newPasswordScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: NewPasswordScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const NewPasswordScreen());

      // case Routes.passwordConfirmationScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: PasswordConfirmationScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const PasswordConfirmationScreen());

      // case Routes.navigation:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: NavigationScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const NavigationScreen());

      // case Routes.createProfileAccountScreen:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //               widget: CreateProfileAccountScreen(
      //             name: args['name'],
      //           )),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => CreateProfileAccountScreen(
      //                 name: args['name'],
      //               ));

      // case Routes.editProfileScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: EditProfileScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const EditProfileScreen());

      // case Routes.passwordSettingScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: PasswordSettingScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const PasswordSettingScreen());

      // case Routes.notificationSettingScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: NotificationSettingScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const NotificationSettingScreen());

      // case Routes.moreOptionScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: MoreOptionScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const MoreOptionScreen());

      // case Routes.termsConditionScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: TermsConditionScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const TermsConditionScreen());

      // case Routes.privacyPolicyScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: PrivacyPolicyScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const PrivacyPolicyScreen());

      // case Routes.helpScreen:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ScreenTitle(widget: HelpScreen()),
      //           settings: settings)
      //       : CupertinoPageRoute(builder: (context) => const HelpScreen());

      // case Routes.chatScreen:
      //   Map args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: ScreenTitle(
      //             widget: ChatScreen(
      //               id: args['id'],
      //               name: args['name'],
      //               url: args['url'],
      //             ),
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => ChatScreen(
      //             id: args['id'],
      //             name: args['name'],
      //             url: args['url'],
      //           ),
      //         );

      default:
        return null;
    }
  }
}

// ignore: unused_element
class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
