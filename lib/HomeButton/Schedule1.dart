import 'package:trash_to_go_app/Widget/ButtonAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';


class Schedule1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonAnimation(Colors.green[300], Colors.green[500]),
              Text("WPM Schedule",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.blue[300], Colors.blue[500]),
              Text("NEPM Schedule",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.orange[300], Colors.orange[500]),
              Text("SPM Schedule",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(Colors.red[300], Colors.red[500]),
              Text("MPM Schedule",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
