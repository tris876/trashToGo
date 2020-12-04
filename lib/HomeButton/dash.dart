import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trash_to_go_app/login.dart';
import '../Dashboard/Schedule.dart';
import 'tips.dart';
import '../Dashboard/dashboard.dart';
import 'Schedule1.dart';

class Dashapp extends StatefulWidget {
  @override
  _DashappState createState() => _DashappState();
}

class _DashappState extends State<Dashapp> {
  int _selectedIndex = 0;
  static List<Widget> _wigetOption = <Widget>[
    DashBoard(),
    Schedule1(),
    TipsCorner(),
  ];

  FirebaseAuth auth = FirebaseAuth.instance;
  var user;

  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _wigetOption,
      ),
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
                    child: Text(
                      user != null ? user.email : "",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.grey[850]),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: InkWell(
                    child: Text("Sign out"),
                    onTap: () => {
                          auth.signOut(),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()))
                        }),
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
