import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wegli/screens/widgets/decortations.dart';
import 'package:flutter/foundation.dart';

class StepContainer extends StatelessWidget {
  StepContainer(
      {Key key,
      this.child,
      this.isComplete = false,
      this.isExpanded = false,
      this.title = 'Title'})
      : super(key: key);

  final Widget child;
  bool isComplete;
  final bool isExpanded;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecorations().baseBackgroundDecoration(),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                  isComplete
                      ? CupertinoIcons.exclamationmark_circle_fill
                      : CupertinoIcons.checkmark_circle_fill,
                  color: isComplete ? Colors.green : Colors.orange,
                  size: 24.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Spacer(),
              IconButton(
                  splashRadius: 24.0,
                  icon: isExpanded
                      ? Icon(CupertinoIcons.chevron_down_circle)
                      : Icon(CupertinoIcons.chevron_up_circle),
                  onPressed: () {})
            ],
          ),
          child
        ],
      ),
    );
  }
}
