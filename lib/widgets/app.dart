import 'package:flutter/material.dart';
import 'package:loyalti_application/pages/firstpage.dart';
import 'package:loyalti_application/providers/appbar.provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(accentColor: Colors.red),
        home: FirstPage(),
      ),
    );
  }
}
