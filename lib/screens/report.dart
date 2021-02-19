import 'package:flutter/material.dart';
import 'package:wegli/screens/widgets/pickImageStep.dart';
import 'package:wegli/screens/widgets/stepContainer.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            ImageStep(),
            StepContainer(title: 'Ort', child: Text('2')),
            StepContainer(title: 'Beschreibung', child: Text('3')),
            StepContainer(
                title: 'Persönliche Daten', child: Icon(Icons.ramen_dining))
          ]),
        ),
      ),
    );
  }
}
