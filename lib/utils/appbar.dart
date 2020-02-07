import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppBarFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Positioned(
      bottom: screen.size.height * .02,
      left: screen.size.width * .05,
      right: screen.size.width * .05,
      child: Card(
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
                        icon: Icon(LineIcons.home),
                        onPressed: () {},
                        tooltip: 'Home',
                      ),
                      Text('Home')
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(LineIcons.globe),
                        onPressed: () {},
                      ),
                      Text('News')
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(LineIcons.gift),
                      onPressed: () {},
                    ),
                    Text('Promociones')
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
