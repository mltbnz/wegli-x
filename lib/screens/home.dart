import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wegli/screens/views/stepContainer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('wegli'),
        ),
        body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StepContainer(
                  child: Text(
                    "STEP 1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
              ),
              StepContainer(
                  child: Text(
                    "Step2",
                  )
              ),
            ]
        ),
    );
  }
}
