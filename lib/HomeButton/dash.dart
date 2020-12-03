import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Dashboard/info.dart';
import 'tips.dart';
import '../Dashboard/dashboard.dart';

class Dashapp extends StatefulWidget {
  @override
  _DashappState createState() => _DashappState();
}

class _DashappState extends State<Dashapp> {
  int _selectedIndex = 0;
  static List<Widget> _wigetOption = <Widget>[
    DashBoard(),
    Center(child: Text('Search')),
    Schedule(),
    TipsCorner(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: IndexedStack(index: _selectedIndex, children: _wigetOption,),
      appBar: AppBar(
        title: Text("DashBoard"),
        centerTitle: true,
        backgroundColor: Color(0xFFB2A9C41),
       
      ),
    drawer: Drawer(
      child: Container(
        color: Colors.grey[400],
        child: Column(
          children: <Widget>[
            Container(
              height: 75.0,
              child: DrawerHeader(
                child: Center(
                child: Text('Settings',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[850]),
                 ),

            )
          ],
        ),
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.trashRestore),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.search),
            title: Text(" "),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.clock),
            title: Text(""),
            
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.exclamationCircle),
            title: Text(""),
            
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        iconSize: 30.0,
      ),
    ));
  }
}
