import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
        initialUrl: 'https://en.wikipedia.org/wiki/Kraken',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
  }
}