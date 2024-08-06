import 'package:flutter/material.dart';

import 'custome_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.person,
          iconColor: Colors.white,
          onPressed: () {},
        ),
        Row(
          children: [
            CustomIconButton(
              icon: Icons.settings,
              iconColor: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(
              width: 10.0,
            ),
            CustomIconButton(
              icon: Icons.notifications,
              iconColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
