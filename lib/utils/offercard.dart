import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OfferCard extends StatelessWidget {
  String descuento;
  String texto;
  String duracion;
  OfferCard({this.descuento, this.duracion, this.texto});
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(250),
      splashColor: Colors.redAccent,
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(250),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
        height: screen.size.height * .1,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   $descuento  $texto',
                    style: TextStyle(fontFamily: 'Open', fontSize: 17),
                  ),
                  Text('   $duracion'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                LineIcons.arrow_right,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
