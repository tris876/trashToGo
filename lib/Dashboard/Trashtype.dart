import 'package:flutter/material.dart';
import 'package:trash_to_go_app/HomeButton/dash.dart';

 class Trashtype extends StatefulWidget {
  @override
  _TrashtypeState createState() => _TrashtypeState();
}


class _TrashtypeState extends State<Trashtype> {
  final double _borderRadius = 24;
  var items = [
    TrashInfo('GREEN WASTE', Color(0xFFB2A9C41), Color(0xFFFC4F0AD), 'Put loose grass clippings, leaves, weeds, pruning/branches up to 4 feet in length and less than 2 inches in diameter in your 96-gallon greenwaste cart'),
    TrashInfo('', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Please do not… Mix regular garbage or recyclables with greenwaste and Put Foam cups or packing materials, plastics, metal, glass or paper in your greenwaste cart'),
    TrashInfo('MEDICAL WASTE', Color(0xFFB2A9C41), Color(0xFFFC4F0AD), 'Making it safe dispose through a sterilization process. Waste that cannot be recycled, needs to be made sanitary and non-hazardous before it can be disposed of.'),
    TrashInfo('', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'A medical autoclave is a device that uses steam to sterilize equipment and other objects. This means that all bacteria, viruses, fungi, and spores are inactivated by using temperature’s so high, that no bacteria can survive and thus the items are deemed safe for recycling or disposal.'),
    TrashInfo('ELECTRICAL WASTE (E-WASTE)', Color(0xFFB2A9C41), Color(0xFFFC4F0AD), 'Give Your Electronic Waste to a Certified E-Waste Recycler.recycling companies which are dedicated to recycling e-waste in a safe and responsible way.'),
    TrashInfo('', Color(0xFF9FBF8E), Color(0xFFFC4F0AD), 'Working alongside a certified recycler means that you don’t have to worry about polluting another nation or risk losing your personal details to criminals.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trash Type Corner"),
        backgroundColor: Color(0xFFB2A9C41),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashapp()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
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
                      gradient: LinearGradient(colors: [
                        items[index].startColor,
                        items[index].endColor
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
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
                            'assets/recycle.png',
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
