import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  num _indexedStack = 1;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _indexedStack,
      children: <Widget>[
        WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://trendershoes.com',
          onPageFinished: (String value) {
            print('entra aqui');
            setState(() {
              _indexedStack = 0;
            });
          },
        ),
        Center(
          child: Column(
              mainAxisSize:MainAxisSize.max,children: [
            CircularProgressIndicator(),
            Text('Sitio web Cargando...')
          ]),
        ),
      ],
    );
  }
}
