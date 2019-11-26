import 'package:flutter/material.dart';

class LoginSignup extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login/Signup"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: new InputDecoration(
                hintText: 'Email address',
                icon: new Icon(
                  Icons.mail,
                  color: Colors.grey,
                )
              ),
              validator: (value) => value.isEmpty ? 'Email can not be empty' : null,
              //onSaved: (value) => _email = value.trim(),
            ),

            TextFormField(
              maxLines: 1,
              obscureText: true,
              decoration: new InputDecoration(
                hintText: 'Password',
                icon: new Icon(
                  Icons.lock,
                  color: Colors.grey,
                )
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blue,
              onPressed: () {
                print('logged in');
              },
              child: Text("Login"),
            )
          ],
        )
      )
    );
  }
}