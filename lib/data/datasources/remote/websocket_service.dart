import 'dart:developer';

import 'package:web_socket_client/web_socket_client.dart';

class WebSocketService {
  final WebSocket channel;

  WebSocketService(String url) : channel = WebSocket(Uri.parse(url));

  Stream<dynamic> getStream() {
    try {
      channel.messages.listen((message) {
        log('Message: $message');
      });
      return channel.messages;
    } catch (e) {
      log('Error: $e');
      rethrow;
    }
  }

  void dispose() {
    channel.close();
  }
}
