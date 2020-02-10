import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loyalti_application/providers/appbar.provider.dart';
import 'package:provider/provider.dart';

class AppBarFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);

    var appbarindex = Provider.of<AppBarProvider>(context);
    return Positioned(
      bottom: screen.size.height * .02,
      left: screen.size.width * .05,
      right: screen.size.width * .05,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(screen.size.height * .04),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          LineIcons.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          appbarindex.setindex(0);
                        },
                        tooltip: 'Home',
                      ),
                      Text(
                        'Home',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Open'),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          LineIcons.globe,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          appbarindex.setindex(1);
                        },
                      ),
                      Text('News',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Open'))
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        LineIcons.gift,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        appbarindex.setindex(2);
                      },
                    ),
                    Text('Promociones',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Open'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
