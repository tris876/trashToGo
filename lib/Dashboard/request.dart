import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  @override
  _RequestFormState createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
//Declare Variables
  String _name;
  String _address;
  String _email;
  String _phonenumber;
  String _parish;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 20,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Required';
        }
         return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }

  Widget _buildParish() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Parish'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Parish is Required';
        }
         return null;
      },
      onSaved: (String value) {
        _parish = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }
         return null;
      },
      onSaved: (String value) {
        _phonenumber = value;
      },
    );
  }

// HEADER
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request Form"),
        backgroundColor: Color(0xFFB2A9C41),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildAddress(),
                _buildParish(),
                _buildEmail(),
                _buildPhoneNumber(),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();
                    print(_name);
                    print(_address);
                    print(_parish);
                    print(_email);
                  },
                )
              ],
            )),
      ),
    );
  }
}
