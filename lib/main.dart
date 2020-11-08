import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trash_to_go_app/login.dart';
import 'package:trash_to_go_app/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: Column(
            //mainAxisAligment: MainAxisAligment.spacebetween,
            //crossAxisAligment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Trash to Go ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Keep Jamaica Clean!", style: TextStyle(fontSize: 20)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                //decoration: BoxDecoration(
                // image: DecorationImage(
                //image: AssetImage('assets/illustration.png')
                // )
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 19)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      color: Color(0xFFB2A9C41),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 19),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
