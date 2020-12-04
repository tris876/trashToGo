import 'package:trash_to_go_app/Widget/ButtonAnimation.dart';
import 'package:flutter/material.dart';


class Schedule1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonAnimation(Colors.green[400], Colors.green[600]),
              
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.green[400], Colors.green[600]),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.green[400], Colors.green[600]),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.green[400], Colors.green[600]),
            ],
          ),
        ),
      ),
    );
  }
}
