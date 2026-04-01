import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simline/features/home/widget.dart/control_panel.dart';
import 'package:simline/features/home/widget.dart/formation_type.dart';
import 'package:simline/gen/assets.gen.dart';
import 'package:simline/gen/colors.gen.dart';
import 'package:simline/helpers/ui_helpers.dart';
import 'player_icon.dart';

/// -------- Formation Models --------
class Formation {
  final String name;
  final int numberOfPlayers;
  final double startX;
  final double startY;

  Formation({
    required this.name,
    required this.numberOfPlayers,
    required this.startX,
    required this.startY,
  });
}

class FormationData {
  static Map<String, Formation> getFormations() {
    return {
      '4 Man': Formation(
          name: '4 Man', numberOfPlayers: 4, startX: 6.0, startY: 8.0),
      '5 Man': Formation(
          name: '5 Man', numberOfPlayers: 5, startX: 6.0, startY: 12.0),
      '6 Man': Formation(
          name: '6 Man', numberOfPlayers: 6, startX: 6.0, startY: 12.0),
      '7 Man': Formation(
          name: '7 Man', numberOfPlayers: 7, startX: 6.0, startY: 12.0),
    };
  }
}

/// -------- Home Screen --------
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

  void _handlePlayPause() => setState(() => isPlaying = !isPlaying);
  void _handleReset() => setState(() {
        isPlaying = false;
        resetCounter++;
      });
  void _handleSpeedChange(double newSpeed) => setState(() => speed = newSpeed);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c0F172A,
      body: SafeArea(
        child: Column(
          children: [
            /// Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade800, width: 1)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Rugby Lineout Simulator',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    'Tactical Visualization & Training Tool',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),

            /// Main Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(24.h),

                    /// Formation Selector
                    Row(
                      children: [
                        Text('Formation',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        UIHelper.horizontalSpace(16.w),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: selectedFormation,
                            hint: Text('Select Formation',
                                style: TextStyle(color: Colors.grey)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 14.h),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide:
                                      BorderSide(color: AppColors.c475569)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide:
                                      BorderSide(color: AppColors.c475569)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide(
                                      color: AppColors.c475569, width: 2.w)),
                              suffixIcon: Padding(
                                  padding: EdgeInsets.all(12.sp),
                                  child:
                                      SvgPicture.asset(Assets.icons.arrowDown)),
                            ),
                            dropdownColor: AppColors.c0F172A,
                            items: const [
                              DropdownMenuItem(
                                  value: '4 Man',
                                  child: Text('4 Man',
                                      style: TextStyle(color: Colors.white))),
                              DropdownMenuItem(
                                  value: '5 Man',
                                  child: Text('5 Man',
                                      style: TextStyle(color: Colors.white))),
                              DropdownMenuItem(
                                  value: '6 Man',
                                  child: Text('6 Man',
                                      style: TextStyle(color: Colors.white))),
                              DropdownMenuItem(
                                  value: '7 Man',
                                  child: Text('7 Man',
                                      style: TextStyle(color: Colors.white))),
                            ],
                            onChanged: (value) =>
                                setState(() => selectedFormation = value),
                          ),
                        ),
                      ],
                    ),

                    UIHelper.verticalSpace(16.h),

                    /// Formation Type Buttons
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 12.h,
                      children: [
                        FormationType(
                            type: 'Check',
                            bgColor: formationType == 1
                                ? AppColors.c065F46
                                : AppColors.primaryColor,
                            borderColor: formationType == 1
                                ? AppColors.c15803D
                                : AppColors.primaryColor,
                            onTap: () => setState(() => formationType = 1)),
                        FormationType(
                            type: 'Jack',
                            bgColor: formationType == 2
                                ? AppColors.c065F46
                                : AppColors.primaryColor,
                            borderColor: formationType == 2
                                ? AppColors.c15803D
                                : AppColors.primaryColor,
                            onTap: () => setState(() => formationType = 2)),
                        FormationType(
                            type: 'King',
                            bgColor: formationType == 3
                                ? AppColors.c065F46
                                : AppColors.primaryColor,
                            borderColor: formationType == 3
                                ? AppColors.c15803D
                                : AppColors.primaryColor,
                            onTap: () => setState(() => formationType = 3)),
                        FormationType(
                            type: 'Queen',
                            bgColor: formationType == 4
                                ? AppColors.c065F46
                                : AppColors.primaryColor,
                            borderColor: formationType == 4
                                ? AppColors.c15803D
                                : AppColors.primaryColor,
                            onTap: () => setState(() => formationType = 4)),
                        FormationType(
                            type: 'Ace',
                            bgColor: formationType == 5
                                ? AppColors.c065F46
                                : AppColors.primaryColor,
                            borderColor: formationType == 5
                                ? AppColors.c15803D
                                : AppColors.primaryColor,
                            onTap: () => setState(() => formationType = 5)),
                      ],
                    ),

                    UIHelper.verticalSpace(20.h),

                    /// Field View
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: selectedFormation == null
                            ? Container(
                                height: 400.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.sports_rugby,
                                          size: 48.sp,
                                          color: Colors.grey.shade600),
                                      UIHelper.verticalSpace(16.h),
                                      Text('Select a Formation',
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600)),
                                      UIHelper.verticalSpace(8.h),
                                      Text(
                                          'Choose a formation from the dropdown above',
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 14.sp)),
                                    ],
                                  ),
                                ),
                              )
                            : FieldView(
                                isPlaying: isPlaying,
                                speed: speed,
                                resetTrigger: resetCounter,
                                selectedFormation: selectedFormation,
                                formationType: formationType,
                              ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Control Panel
                    ControlPanel(
                        isPlaying: isPlaying,
                        speed: speed,
                        onPlayPause: _handlePlayPause,
                        onReset: _handleReset,
                        onSpeedChange: _handleSpeedChange),
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

/// -------- FieldView --------
class FieldView extends StatefulWidget {
  final bool isPlaying;
  final double speed;
  final int resetTrigger;
  final String? selectedFormation;
  final int formationType;

  const FieldView(
      {super.key,
      required this.isPlaying,
      required this.speed,
      required this.resetTrigger,
      this.selectedFormation,
      this.formationType = -1});

  @override
  State<FieldView> createState() => _FieldViewState();
}

class _FieldViewState extends State<FieldView> {
  double currentTime = 0.0;
  Timer? animationTimer;
  static const double fieldHeight = 18.0;
  static const double pixelsPerMeter = 18.0;
  Formation? currentFormation;
  Map<String, Formation> formations = {};

  @override
  void initState() {
    super.initState();
    formations = FormationData.getFormations();
    _updateFormation();
  }

  @override
  void didUpdateWidget(FieldView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedFormation != widget.selectedFormation)
      _updateFormation();
    if (oldWidget.resetTrigger != widget.resetTrigger) _resetAnimation();
    if (oldWidget.isPlaying != widget.isPlaying)
      widget.isPlaying ? _startAnimation() : _stopAnimation();
    if (oldWidget.speed != widget.speed && widget.isPlaying) {
      _stopAnimation();
      _startAnimation();
    }
  }

  void _updateFormation() => setState(() {
        currentFormation = widget.selectedFormation != null
            ? formations[widget.selectedFormation!]
            : null;
        currentTime = 0.0;
      });
  void _resetAnimation() {
    _stopAnimation();
    setState(() => currentTime = 0.0);
  }

  void _startAnimation() {
    if (currentFormation == null) return;
    const int fps = 60;
    animationTimer = Timer.periodic(Duration(milliseconds: 1000 ~/ fps), (_) {
      setState(() {
        currentTime = (currentTime + (1 / fps) * widget.speed) % 5.0;
      });
    });
  }

  void _stopAnimation() {
    animationTimer?.cancel();
    animationTimer = null;
  }

  double getAnimationOffset(int index, int totalPlayers) {
    if (!widget.isPlaying) return 0.0;
    double progress = min(currentTime / 2.5, 1.0);

    switch (widget.formationType) {
      case 1: // Check
        return (index.isEven ? 1 : -1) * progress * 1.5;
      case 2: // Jack
        return (index.isEven ? 1 : -1) * progress * 2.0;
      case 3: // King
        return (index < totalPlayers / 2 ? -1 : 1) * progress * 1.8;
      case 4: // Queen
        return sin(progress * pi) * (index - totalPlayers / 2) * 0.8;
      case 5: // Ace
        return cos(progress * pi) * (index - totalPlayers / 2) * 1.2;
      default:
        return 0.0;
    }
  }

  // ---------- Animation Functions ----------
  double animation4Man(int i, double p) =>
      (widget.formationType == 2) ? (i.isEven ? 1 : -1) * p * 2 : 0;
  double animation5Man(int i, double p) =>
      (widget.formationType == 2) ? (i < 2 ? -1 : 1) * p * 1.5 : 0;
  double animation6Man(int i, double p) =>
      (widget.formationType == 2) ? (i.isEven ? 1 : -1) * p * 1.5 : 0;
  double animation7Man(int i, double p) =>
      (widget.formationType == 2) ? (i < 3 ? -1 : 1) * p * 2 : 0;

  @override
  Widget build(BuildContext context) {
    final double pixelHeight = fieldHeight * pixelsPerMeter;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: pixelHeight,
          decoration: BoxDecoration(
            color: AppColors.c15803D,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF10B981), width: 2),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 10))
            ],
          ),
          child: Stack(
            children: [
              /// Main line
              Positioned(
                  left: 25,
                  top: 0,
                  bottom: 0,
                  child: Container(
                      width: 3, color: Colors.white.withOpacity(0.8))),

              /// Start line at 5m
              Positioned(
                  left: 5 * pixelsPerMeter,
                  top: 0,
                  bottom: 0,
                  child: Container(
                      width: 1.5, color: Colors.white.withOpacity(0.6))),

              /// Distance Markers
              ...buildDistanceMarkers(),

              /// Players
              if (currentFormation != null)
                for (int i = 0; i < currentFormation!.numberOfPlayers; i++)
                  _buildPlayer(i),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  List<Widget> buildDistanceMarkers() {
    final List<Widget> markers = [];
    final distances = [5, 7, 10, 13, 15];
    for (final d in distances) {
      markers.add(
        Positioned(
          left: d * pixelsPerMeter,
          top: 0,
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 1.5, height: 20, color: Colors.white.withOpacity(0.6)),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(4)),
                child: Text('$d m',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 11,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      );
    }
    return markers;
  }

  Widget _buildPlayer(int index) {
    List<int> allPlayers = [2, 1, 6, 5, 4, 3, 7];
    int totalPlayers = currentFormation!.numberOfPlayers;
    List<int> playerNumbers = allPlayers.sublist(0, totalPlayers);

    int playerNumber = playerNumbers[index];
    double minMeter = 5.0;
    double maxMeter = 15.0;
    double spacing =
        totalPlayers == 1 ? 0 : (maxMeter - minMeter) / (totalPlayers - 1);
    double baseXMeter = minMeter + index * spacing;
    double yMeter = currentFormation!.startY;

    double animatedOffset = getAnimationOffset(index, totalPlayers);
    double finalXMeter = (baseXMeter + animatedOffset).clamp(5.0, 15.0);

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: finalXMeter * pixelsPerMeter,
      top: yMeter * pixelsPerMeter - 20,
      child: PlayerIcon(number: playerNumber),
    );
  }
}
