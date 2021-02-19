import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wegli/models/report.dart';
import 'package:wegli/provider/pictures.dart';
import 'package:wegli/screens/Home.dart';
import 'package:wegli/screens/widgets/themes.dart';
import 'package:wegli/screens/report.dart';

class WegliApp extends StatelessWidget {
  @override
  final appName = 'wegli';
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Pictures>(create: (_) => Pictures()),
        Provider(create: (context) => Report()),
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        title: appName,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/report': (context) => ReportScreen()
        },
      ),
    );
  }
}
