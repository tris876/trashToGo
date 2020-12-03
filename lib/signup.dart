import 'package:flutter/material.dart';
import 'package:trash_to_go_app/main.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFFF2BBEEA),
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor:  Color(0xFFF001117).withOpacity(0.7),
          
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          ),
        ),
        body: Stack(
              fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/forest2.jpg', fit: BoxFit.cover,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),


          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height , //-50
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
                                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create an account, It's Free!",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          makeInput(label:"Firstname",), 
                          makeInput(label:" Last name"),                          
                          
                          makeInput(label:"Password", obscureText:true),
                          makeInput(label:"Confirm Password", obscureText:true),
                            
                      
                          ],
                      ),
                      Column(
                        children: [
                          Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {}, ///Sign up press
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
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text("Already have an account?", style: TextStyle(color: Colors.white)),
                          Text("Login ", style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize:20

                          ),)
                        ],
                      )
                    ],
                  ),
                ),
           
              ],
            ),
          ),
        ],
        )
        );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),
        ),
        SizedBox(height: 2,),
        TextField(
          
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey [400])
            ),
               border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey [400])
              ),
          ),
          
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
