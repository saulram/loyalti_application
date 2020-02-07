import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  List<Color> colores;
  List<Widget> children;
  DataCard({this.colores, this.children});
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screen.size.width * .02),
        height: screen.size.height * .25,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black45, spreadRadius: 1, blurRadius: 5)
          ],
          gradient: LinearGradient(
              colors: colores,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(fit: StackFit.expand, children: this.children),
      ),
    );
  }
}
