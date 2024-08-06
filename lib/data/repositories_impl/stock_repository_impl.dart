import 'dart:convert';
import 'dart:developer';

import '../../domain/models/stock_price.dart';
import '../../domain/repositories/stock_repository.dart';
import '../datasources/remote/websocket_service.dart';

class StockRepositoryImpl implements StockRepository {
  final WebSocketService service;

  StockRepositoryImpl(this.service);

  @override
  Stream<StockPrice> getStockPrices() {
    log('Getting stock prices');
    return service.getStream().map((data) {
      final json = jsonDecode(data);
      return StockPrice.fromJson(json);
    });
  }
}
