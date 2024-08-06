import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final Color? iconColor;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kPrimaryColor,
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
