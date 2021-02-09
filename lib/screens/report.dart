import 'package:flutter/material.dart';
import 'package:wegli/screens/views/stepContainer.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          StepContainer(title: 'Fotos', child: Text('1')),
          StepContainer(title: 'Ort', child: Text('2')),
          StepContainer(title: 'Beschreibung', child: Text('3')),
          StepContainer(
              title: 'Persönliche Daten', child: Icon(Icons.ramen_dining))
        ]),
      ),
    );
  }
}
