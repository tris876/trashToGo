import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trash_to_go_app/HomeButton/dash.dart';
import 'package:trash_to_go_app/main.dart';
import 'package:trash_to_go_app/MainApp/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;

  final auth = FirebaseAuth.instance;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF1FC88D),
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Color(0xFFF001117).withOpacity(0.4),
          leading:IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/forest.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFF001117).withOpacity(0.4),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: <Widget>[
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Login into your account",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        _email = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 10),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[400])),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[400])),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Password",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    onChanged: (value) {
                                      setState(() {
                                        _password = value.trim();
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 10),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[400])),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[400])),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Builder(
                            builder: (context) => Container(
                              padding: EdgeInsets.only(top: 3, left: 3),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {
                                  _signIn(context);
                                },
                                color: Color(0xFFB2A9C41),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  loading ? "Signining..." : "Log in",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupPage()))
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  //Container(
                  // height: MediaQuery.of(context).size.height /4,
                  // decoration: BoxDecoration(
                  // image: DecorationImage(
                  //image: AssetImage('assets/illustration.png'),
                  // )
                  //),
                  // )
                ],
              ),
            ),
          ],
        ));
  }

  _snack(BuildContext context, String msg) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
        action: SnackBarAction(
          label: 'close',
          onPressed: () {
            //some action
          },
        ),
      ),
    );
  }

  _signIn(BuildContext context) async {
    setState(() {
      loading = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashapp()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        _snack(context, "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        _snack(context, "Wrong password provided for that user.");
      } else {
        _snack(context, "Could not log-in");
      }
    }
    setState(() {
      loading = false;
    });
  }
}
