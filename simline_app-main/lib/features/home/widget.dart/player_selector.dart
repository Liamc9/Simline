import 'package:flutter/material.dart';
import 'package:simline/features/home/model/lineout_play.dart';

class PlaySelector extends StatelessWidget {
  final List<LineoutPlay> plays;
  final int selectedIndex;
  final ValueChanged<int> onSelectPlay;

  const PlaySelector({
    super.key,
    required this.plays,
    required this.selectedIndex,
    required this.onSelectPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade800,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Previous Button
          _buildNavigationButton(
            icon: Icons.chevron_left,
            onTap: _handlePrevious,
          ),

          const SizedBox(width: 12),

          // Play Cards
          Expanded(
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: plays.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: _buildPlayCard(index),
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 12),

          // Next Button
          _buildNavigationButton(
            icon: Icons.chevron_right,
            onTap: _handleNext,
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFF334155), // Slate-700
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  Widget _buildPlayCard(int index) {
    final play = plays[index];
    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => onSelectPlay(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected 
              ? const Color(0xFF10B981) // Emerald-600
              : const Color(0xFF334155), // Slate-700
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color(0xFF10B981).withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Play ${index + 1}',
              style: TextStyle(
                color: isSelected 
                    ? Colors.white.withOpacity(0.9) 
                    : Colors.grey.shade500,
                fontSize: 11,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              play.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  void _handlePrevious() {
    final newIndex = selectedIndex == 0 ? plays.length - 1 : selectedIndex - 1;
    onSelectPlay(newIndex);
  }

  void _handleNext() {
    final newIndex = selectedIndex == plays.length - 1 ? 0 : selectedIndex + 1;
    onSelectPlay(newIndex);
  }
}
