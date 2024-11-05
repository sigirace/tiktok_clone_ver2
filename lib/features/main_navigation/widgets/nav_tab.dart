import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_ver2/constants/gaps.dart';

class NavTab extends StatelessWidget {
  final String text;
  final IconData icon;
  final IconData selectedIcon;
  final bool isSelected;
  final Function onTab;

  const NavTab({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onTab,
    required this.selectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTab(),
        child: Container(
          color: Colors.transparent,
          child: AnimatedOpacity(
            duration: const Duration(microseconds: 300),
            opacity: isSelected ? 1 : 0.4,
            child: Column(
              children: [
                FaIcon(
                  isSelected ? selectedIcon : icon,
                  color: Colors.white,
                ),
                Gaps.v5,
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
