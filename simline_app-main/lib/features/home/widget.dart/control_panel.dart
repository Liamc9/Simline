import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simline/helpers/ui_helpers.dart';

class ControlPanel extends StatelessWidget {
  final bool isPlaying;
  final double speed;
  final VoidCallback onPlayPause;
  final VoidCallback onReset;
  final ValueChanged<double> onSpeedChange;

  const ControlPanel({
    Key? key,
    required this.isPlaying,
    required this.speed,
    required this.onPlayPause,
    required this.onReset,
    required this.onSpeedChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade800,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Play/Pause Button
          _buildPlayPauseButton(),
          
          const SizedBox(width: 24),

          // Reset Button
          _buildResetButton(),

          const SizedBox(width: 32),

          // Speed Control
          _buildSpeedControl(),
        ],
      ),
    );
  }

  Widget _buildPlayPauseButton() {
    return GestureDetector(
      onTap: onPlayPause,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF15803D), // Emerald-600
          shape: BoxShape.circle,
          // boxShadow: [
          //   BoxShadow(
          //     color: const Color(0xFF10B981).withOpacity(0.4),
          //     blurRadius: 12,
          //     offset: const Offset(0, 4),
          //   ),
          // ],
        ),
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }

  Widget _buildResetButton() {
    return GestureDetector(
      onTap: onReset,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF334155), // Slate-700
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }

  Widget _buildSpeedControl() {
    final List<double> speeds = [0.5, 1.0, 1.5];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Speed',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 12,
          ),
        ),
        UIHelper.verticalSpace(8.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: speeds.map((s) {
            final isSelected = speed == s;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () => onSpeedChange(s),
                child: Container(
                 width: 50.w,
                 height: 50.h,
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? const Color(0xFF15803D) // Blue-600
                        : const Color(0xFF334155), // Slate-700
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: const Color(0xFF15803D).withOpacity(0.3),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      '${s.toStringAsFixed(1)}×',
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.grey.shade300,
                        fontSize: 10,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
