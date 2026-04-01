import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simline/constants/text_font_style.dart';
import 'package:simline/features/home/widget.dart/control_panel.dart';
import 'package:simline/features/home/widget.dart/field_view.dart';
import 'package:simline/features/home/widget.dart/formation_type.dart';
import 'package:simline/gen/assets.gen.dart';
import 'package:simline/gen/colors.gen.dart';
import 'package:simline/helpers/ui_helpers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = false;
  double speed = 1.0;
  int resetCounter = 0;
  String? selectedFormation;
  int formationType = -1;

  void _handlePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void _handleReset() {
    setState(() {
      isPlaying = false;
      resetCounter++;
    });
  }

  void _handleSpeedChange(double newSpeed) {
    setState(() {
      speed = newSpeed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0F172A,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade800, width: 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Rugby Lineout Simulator',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                  ),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    'Tactical Visualization & Training Tool',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),

            // Main Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(24.h),
                    
                    // Formation Selector Row
                    Row(
                      children: [
                        Text(
                          'Formation',
                          style: TextFontStyle.headline16w600cfffffStyleSFPro
                              .copyWith(fontSize: 20.sp),
                        ),
                        UIHelper.horizontalSpace(16.w),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: selectedFormation,
                            hint: Text(
                              'Select Formation',
                              style: TextFontStyle
                                  .headline16w600cfffffStyleSFPro
                                  .copyWith(color: Colors.grey),
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 14.h,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: AppColors.c475569,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: AppColors.c475569,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                  color: AppColors.c475569,
                                  width: 2.w,
                                ),
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(12.sp),
                                child: SvgPicture.asset(Assets.icons.arrowDown),
                              ),
                            ),
                            dropdownColor: AppColors.c0F172A,
                            items: const [
                              DropdownMenuItem(
                                value: '4 Man',
                                child: Text(
                                  '4 Man',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              DropdownMenuItem(
                                value: '5 Man',
                                child: Text(
                                  '5 Man',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              DropdownMenuItem(
                                value: '6 Man',
                                child: Text(
                                  '6 Man',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              DropdownMenuItem(
                                value: '7 Man',
                                child: Text(
                                  '7 Man',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedFormation = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    
                    UIHelper.verticalSpace(16.h),
                    
                    // Formation Type Selection
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UIHelper.verticalSpace(8.h),
                        Wrap(
                          runSpacing: 12.h,
                          spacing: 12.w,
                          children: [
                            FormationType(
                              type: 'Check',
                              bgColor: formationType == 1 ? AppColors.c065F46 : AppColors.primaryColor,
                              borderColor: formationType == 1 ? AppColors.c15803D : AppColors.primaryColor,
                              onTap: () {
                                setState(() {
                                  formationType = 1;
                                });
                              },
                            ),
                            FormationType(
                              type: 'Jack',
                              bgColor: formationType == 2 ? AppColors.c065F46 : AppColors.primaryColor,
                              borderColor: formationType == 2 ? AppColors.c15803D : AppColors.primaryColor,
                              onTap: () {
                                setState(() {
                                  formationType = 2;
                                });
                              },
                            ),
                            FormationType(
                              type: 'King',
                              bgColor: formationType == 3 ? AppColors.c065F46 : AppColors.primaryColor,
                              borderColor: formationType == 3 ? AppColors.c15803D : AppColors.primaryColor,
                              onTap: () {
                                setState(() {
                                  formationType = 3;
                                });
                              },
                            ),
                            FormationType(
                              type: 'Queen',
                              bgColor: formationType == 4 ? AppColors.c065F46 : AppColors.primaryColor,
                              borderColor: formationType == 4 ? AppColors.c15803D : AppColors.primaryColor,
                              onTap: () {
                                setState(() {
                                  formationType = 4;
                                });
                              },
                            ),
                            FormationType(
                              type: 'Ace',
                              bgColor: formationType == 5 ? AppColors.c065F46 : AppColors.primaryColor,
                              borderColor: formationType == 5 ? AppColors.c15803D : AppColors.primaryColor,
                              onTap: () {
                                setState(() {
                                  formationType = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                    UIHelper.verticalSpace(20.h),
                    
                    // Field View
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            if (selectedFormation == null)
                              Container(
                                height: 400.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.sports_rugby,
                                        size: 48.sp,
                                        color: Colors.grey.shade600,
                                      ),
                                      UIHelper.verticalSpace(16.h),
                                      Text(
                                        'Select a Formation',
                                        style: TextFontStyle.headline16w600cfffffStyleSFPro.copyWith(
                                          fontSize: 18.sp,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                      UIHelper.verticalSpace(8.h),
                                      Text(
                                        'Choose a formation from the dropdown above',
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            else
                              FieldView(
                                isPlaying: isPlaying,
                                speed: speed,
                                resetTrigger: resetCounter,
                                selectedFormation: selectedFormation,
                                formationType: formationType,
                              ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Control Panel
                    ControlPanel(
                      isPlaying: isPlaying,
                      speed: speed,
                      onPlayPause: _handlePlayPause,
                      onReset: _handleReset,
                      onSpeedChange: _handleSpeedChange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}