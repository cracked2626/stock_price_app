import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../domain/models/stock_price.dart';
import '../../../domain/repositories/stock_repository.dart';

class StockProvider with ChangeNotifier {
  final StockRepository repository;

  StockProvider(this.repository);

  StockPrice? _latestPrice;

  StockPrice? get latestPrice => _latestPrice;

  void fetchPrices() {
    repository.getStockPrices().listen((price) {
      log('Price: $price');
      _latestPrice = price;
      notifyListeners();
    });
  }
}
