import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simline/constants/text_font_style.dart';

import '../gen/colors.gen.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? borderColor;
  final Color? bgColor;
  final Color? textColor;
  final double? borderRadius;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderColor = AppColors.primaryColor,
    this.bgColor = AppColors.primaryColor,
    this.textColor = AppColors.cffffff,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor!),
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Center(
            child: Text(
              text.tr,
              style: TextFontStyle.headline16w500cffffffStylepoppins
                  .copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
