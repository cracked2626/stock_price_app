class StockPrice {
  final int price;

  StockPrice({required this.price});

  factory StockPrice.fromJson(Map<String, dynamic> json) {
    return StockPrice(price: json['price']);
  }
}
