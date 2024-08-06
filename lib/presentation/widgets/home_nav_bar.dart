import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5.0,
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: kPrimaryColor,
        ),
        child: const Center(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.dashboard,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Dashboard',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10.0,
              ),
              CircleAvatar(
                backgroundColor: kPrimaryFadeColor,
                child: Icon(
                  Icons.wallet,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
