import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simline/constants/text_font_style.dart';
class FormationType extends StatelessWidget {
  final String type;
  final Color bgColor;
  final Color borderColor;
  final void Function()? onTap;
  const FormationType({
    super.key,
    required this.type,
    required this.bgColor,
    this.onTap, 
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 12.h),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor,
          )
        ),
        child: Text(
          type,
          style: TextFontStyle.headline16w600cfffffStyleSFPro,
        ),
      ),
    );
  }
}
