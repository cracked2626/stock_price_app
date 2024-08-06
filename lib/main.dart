import 'package:flutter/material.dart';
import 'package:optiontradingapp/presentation/screens/home_screen.dart';
import 'package:optiontradingapp/presentation/state_management/stock_provider.dart';
import 'package:provider/provider.dart';

import 'data/datasources/remote/websocket_service.dart';
import 'data/repositories_impl/stock_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // wait 1 min as server after running the app as server takes time to respond
    final webSocketService =
        WebSocketService('wss://websocket-example-zh0u.onrender.com');
    final stockRepository = StockRepositoryImpl(webSocketService);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StockProvider(stockRepository)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
