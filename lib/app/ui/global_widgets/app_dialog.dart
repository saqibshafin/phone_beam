import 'package:flutter/material.dart';

import '../../data/constants/app_color.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({required this.body, this.height, super.key});

  final Widget body;
  final double? height;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: const EdgeInsets.fromLTRB(
          16, 32, 16, 16), // 32 for offsetting the widget from the top
      child: Container(
        width: size.width - 50,
        height: height ?? size.height * 0.83,
        decoration: BoxDecoration(
          color: AppColors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: body,
      ),
    );
  }
}
