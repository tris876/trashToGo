import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trash_to_go_app/MainApp/login.dart';
import 'package:trash_to_go_app/main.dart';
import 'package:trash_to_go_app/HomeButton/dash.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email, _password;
  bool loading = false;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFFF2BBEEA),
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Color(0xFFF001117).withOpacity(0.7),
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
              'assets/forest2.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFF001117).withOpacity(0.7),
            ),
            //SingleChildScrollView(
             /*child:*/ Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.of(context).size.height, //-50
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Create an account, It's Free!",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      _email = value;
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
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      _password = value.trim();
                                    },
                                    obscureText: true,
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
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Builder(
                                builder: (context) => Container(
                                  padding: EdgeInsets.only(top: 3, left: 3),
                                  child: MaterialButton(
                                    minWidth: double.infinity,
                                    height: 60,
                                    onPressed: () {
                                      _register(context);
                                    },

                                    ///Sign up press
                                    color: Color(0xFFB2A9C41),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      loading ? "Please wait..." : "Sign up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Already have an account?",
                                  style: TextStyle(color: Colors.white)),
                              InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage())),
                                child: Text(
                                  "Login ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            //),
          ],
        ));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        SizedBox(
          height: 2,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
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

  _register(BuildContext context) async {
    setState(() {
      loading = true;
    });
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _snack(context, "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        _snack(context, "The account already exists for that email.");
      }
    } catch (e) {
      _snack(context, "Somthing went wrong");
    }

    setState(() {
      loading = false;
    });
  }
}
