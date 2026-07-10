import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveNavBarIcon extends StatelessWidget {
  String iconName;
  ActiveNavBarIcon({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFF202020).withValues(alpha: 0.6),
        borderRadius: .circular(44),
      ),
      child: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        height: 22,
        width: 22,
        fit: .scaleDown,
        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }
}
