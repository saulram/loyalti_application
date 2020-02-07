import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OfferCard extends StatelessWidget {
  String descuento;
  String texto;
  String duracion;
  OfferCard({this.descuento,this.duracion,this.texto});
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Card(
      child: Container(
        height:screen.size.height*.1 ,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Text('$descuento  $texto'),
                  Text('$duracion')
                ]
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(LineIcons.arrow_right,color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
