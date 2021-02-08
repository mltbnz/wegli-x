import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wegli/screens/views/stepContainer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wegli'),
        backgroundColor: const Color(0x000000),
      ),
      body: Column(children: [
        StepContainer(title: 'Fotos', child: Text('1')),
        StepContainer(title: 'Ort', child: Text('2')),
        StepContainer(title: 'Beschreibung', child: Text('3')),
        StepContainer(
            title: 'Persönliche Daten', child: Icon(Icons.ramen_dining))
      ]),
    );
  }
}
