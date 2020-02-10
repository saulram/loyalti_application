import 'package:flutter/material.dart';
import 'package:loyalti_application/utils/datacard.dart';
import 'package:loyalti_application/utils/offercard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SingleChildScrollView(
          child: Container(
        height: screen.size.height,
        width: screen.size.width,
        child: Column(
          children: <Widget>[
            Container(
              width: screen.size.width,
              padding: EdgeInsets.only(
                  top: screen.size.height * .1,
                  bottom: screen.size.height * .04,
                  left: screen.size.width * .05,
                  right: screen.size.width * .05),
              child: Text(
                'Buenos días Josh',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Open',
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                DataCard(
                  colores: [Colors.blue, Colors.blueAccent],
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            top: 20,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Ahora tienes:',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Open',
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '3100',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Open',
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Puntos de lealtad',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Open',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Promedio, 1500 por semana',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Open',
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    )
                  ],
                ),
                DataCard(
                  colores: [Colors.red, Colors.redAccent, Colors.redAccent],
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 19),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Canjea tus puntos',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Open',
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 19),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Una gran variedad de productos',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Open',
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 19),
              alignment: Alignment.centerLeft,
              child: Text(
                'Ofertas Exclusivas para ti',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Open',
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: screen.size.height * .36,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  OfferCard(
                    descuento: "€15",
                    texto: 'descuento al comprar',
                    duracion: 'Expira en 10 horas',
                  ),
                  OfferCard(
                    descuento: "€15",
                    texto: 'descuento al comprar',
                    duracion: 'Expira en 10 horas',
                  ),
                  OfferCard(
                    descuento: "€15",
                    texto: 'descuento al comprar',
                    duracion: 'Expira en 10 horas',
                  ),
                  OfferCard(
                    descuento: "€15",
                    texto: 'descuento al comprar',
                    duracion: 'Expira en 10 horas',
                  ),
                  OfferCard(
                    descuento: "€15",
                    texto: 'descuento al comprar',
                    duracion: 'Expira en 10 horas',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
