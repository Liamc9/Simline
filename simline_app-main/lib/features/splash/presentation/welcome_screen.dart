import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simline/constants/text_font_style.dart';
import 'package:simline/gen/assets.gen.dart';
import 'package:simline/gen/colors.gen.dart';
import 'package:simline/helpers/ui_helpers.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Assets.images.simlineLogo.path,
              width: 115.w,
              height: 123.h,
            ),
            UIHelper.verticalSpace(16.h),
            Text(
              'Tactical Visualization & Training Tool',
              style: TextFontStyle.headline16w600cfffffStyleSFPro,
            ),
          ],
        ),
      ),
    );
  }
}
