import 'package:flutter/material.dart';
import 'package:phone_beam/app/data/constants/app_color.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.bgColor,
    this.iconColor,
    this.iconSize,
    this.visualDensity,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback? onTap;
  final Color? bgColor;
  final Color? iconColor;
  final double? iconSize;
  final VisualDensity? visualDensity;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Colors.transparent,
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor ?? AppColors.white,
          size: iconSize ?? 28,
        ),
        padding: const EdgeInsets.all(0),
        visualDensity:
            visualDensity, // to control whitespace around a Checkbox or PopupMenuButton or etc.
        onPressed: onTap,
        splashColor: AppColors.white,
        splashRadius: 20,
      ),
    );
  }
}
