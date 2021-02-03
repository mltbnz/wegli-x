import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wegli/models/report.dart';
import 'package:wegli/screens/Home.dart';

class WegliApp extends StatelessWidget {

  @override
  final appName = 'wegli';
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => Report()),
      ],
      child: MaterialApp(
        title: appName,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    );
  }
}