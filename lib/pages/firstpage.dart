import 'package:flutter/material.dart';
import 'package:loyalti_application/pages/homepage.dart';
import 'package:loyalti_application/pages/secondpage.dart';
import 'package:loyalti_application/pages/thirdpage.dart';
import 'package:loyalti_application/providers/appbar.provider.dart';
import 'package:loyalti_application/utils/appbar.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  Widget page(BuildContext context) {
    var appbarpage = Provider.of<AppBarProvider>(context);
    switch (appbarpage.getIndex()) {
      case 0:
        return HomePage();
      case 1:
        return SecondPage();
      case 2:
        return ThirdScreen(

        );
      default:
      return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            page(context),
            AppBarFloating(),
          ],
        ),
      ),
    );
  }
}
