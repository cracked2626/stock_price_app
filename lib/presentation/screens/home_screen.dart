import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_nav_bar.dart';
import '../widgets/stock_price_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldBackgroundColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              padding: kDefaultPadding,
              children: const <Widget>[
                HomeAppBar(),
                SizedBox(height: 20),
                StockPriceWidget()
              ],
            ),
            const HomeNavBar(),
          ],
        ),
      ),
    );
  }
}
