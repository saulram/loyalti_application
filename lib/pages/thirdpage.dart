import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: screen.size.height * .1),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatarfiles.alphacoders.com/179/179031.jpg'),
            radius: screen.size.width * .2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screen.size.height * .00),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Josh Alcazar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Open', fontSize: 30),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Numero de Cliente: 120948723',
            style: TextStyle(fontFamily: 'Open'),
          ),
        ),
        Text(
          'Tus puntos totales 3100',
          style: TextStyle(
              color: Colors.red,
              fontFamily: 'Open',
              fontWeight: FontWeight.w800,
              fontSize: 17),
        ),
        QrImage(
          data: "120948723",
          version: QrVersions.auto,
          size: screen.size.height * .3,
        ),
        MaterialButton(
          onPressed: () {},
          shape: StadiumBorder(),
          color: Colors.red,
          child: Text(
            'Muestra este codigo a tu vendedor',
            style: TextStyle(color: Colors.white, fontFamily: 'Open'),
          ),
        ),
      ],
    );
  }
}
