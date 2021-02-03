import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wegli/screens/components/decortations.dart';

class StepContainer extends StatelessWidget {
  final Widget child;

  const StepContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecorations().baseBackgroundDecoration(),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: child,
      );
  }
}