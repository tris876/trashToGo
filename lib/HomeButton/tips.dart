import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'dart:ui' as ui;
import 'package:trash_to_go_app/HomeButton/dash.dart';


class TipsCorner extends StatefulWidget {
  @override
  _TipsCornerState createState() => _TipsCornerState();
}




class _TipsCornerState extends State<TipsCorner> {
  final double _borderRadius = 24;
  var items = [
    TrashInfo('trash1', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Description'),
    TrashInfo('trash2', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'bs'),
    TrashInfo('trash3', Color(0xFFB2A9C41), Color(0xFFFC4F0AD), 'Desdjenon'),
    TrashInfo('trash1', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Description'),
    TrashInfo('trash2', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Destion'),
    TrashInfo('trash3', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Description'),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFFC4F0AD),
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(
                          colors: [items[index].startColor, items[index].endColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: items[index].endColor,
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                    ),
                  ),
                  Positioned.fill(
                    child: Row(
                      children: <Widget>[
                        //place picture
                        Expanded(
                          child: Image.asset(
                            'assets/planet-earth.png',
                            height: 64,
                            width: 64,
                          ),
                          flex: 2,
                        ),

                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                items[index].name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                items[index].descp,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TrashInfo {
  final String name;
  final Color startColor;
  final Color endColor;
  final String descp;

  TrashInfo(this.name, this.startColor, this.endColor, this.descp);
}
