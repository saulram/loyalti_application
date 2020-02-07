import 'package:flutter/material.dart';
import 'package:loyalti_application/pages/firstpage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.red),
      home: FirstPage(),
    );
  }
}
