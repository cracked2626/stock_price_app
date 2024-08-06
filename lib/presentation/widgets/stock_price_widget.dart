import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colors.dart';
import '../state_management/stock_provider.dart';

class StockPriceWidget extends StatefulWidget {
  const StockPriceWidget({
    super.key,
  });

  @override
  State<StockPriceWidget> createState() => _StockPriceWidgetState();
}

class _StockPriceWidgetState extends State<StockPriceWidget> {
  @override
  void initState() {
    final stockProvider = Provider.of<StockProvider>(context, listen: false);
    stockProvider.fetchPrices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stockProvider = Provider.of<StockProvider>(context, listen: true);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Google',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Text(
            '₹ ${stockProvider.latestPrice?.price.toString() ?? 'Fetching data...'}',
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
