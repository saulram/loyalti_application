import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return ListView(
      children: <Widget>[
        Container(
          height: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.trendershoes.com/Images/logotipo.jpg'))),
        ),
        Padding(
          padding: EdgeInsets.only(top: screen.size.height * .03),
          child: Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://image.tmdb.org/t/p/original/hErUwonrQgY5Y7RfxOfv8Fq11MB.jpg'),
              radius: screen.size.width * .15,
            ),
          ),
        ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: Text('Muestra tu tarjeta al vendedor',style: TextStyle(fontFamily:'Open'),),
         ),
       ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlipCard(
            key: cardKey,
            direction: FlipDirection.HORIZONTAL, // default
            front: GestureDetector(
              onTap: () {
                cardKey.currentState.toggleCard();
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    height: screen.size.height * .25,
                    width: screen.size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.black),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.trendershoes.com/Images/logotipo.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 95, left: 15),
                    child: Text(
                      'Josh Alcazar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Open',
                          fontSize: 17,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 95, left: screen.size.width * .8),
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://cdn.freebiesupply.com/logos/large/2x/chip-1-logo-png-transparent.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 180, left: 15),
                    child: Text(
                      'Cliente: 120948723',
                      style: TextStyle(fontFamily: 'Open'),
                    ),
                  ),
                ],
              ),
            ),
            back: Stack(
              children: <Widget>[
                Container(
                  height: screen.size.height * .25,
                  width: screen.size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black),
                    ],
                  ),
                ),
                Center(
                  child: QrImage(
                    data: "120948723",
                    version: QrVersions.auto,
                    size: screen.size.height * .2,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 180),
                  width: screen.size.width*1,
                  child: Text(
                    'Tienes 3100 puntos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Open',
                        fontWeight: FontWeight.w800,
                        fontSize: 17),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
