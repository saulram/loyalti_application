import 'package:flutter/material.dart';
import 'package:loyalti_application/pages/homepage.dart';
import 'package:loyalti_application/utils/appbar.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
              HomePage(),
            AppBarFloating(),
          
          ],
        ),
      ),
    );
  }
}
