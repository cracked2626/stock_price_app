import '../models/stock_price.dart';

abstract class StockRepository {
  Stream<StockPrice> getStockPrices();
}
// Compare this snippet from lib/data/repositories_impl/stock_repository_impl.dart:
