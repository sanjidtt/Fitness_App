import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';
import 'top_bar.dart';
// void main() {
//   runApp(MaterialApp(
    
//     title: 'REGISTRATION SCREEN',
//     home: FavoriteCity(),
//     theme: ThemeData(accentColor: Colors.deepPurpleAccent),
//   ));
// }

class Login extends StatefulWidget {
   static String id ="login";


  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  String username = "";
  String password = "";
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.all(5.0 * 2),
            child: ListView(
              children: <Widget>[
                TopBar(),
                Padding(
                  padding: EdgeInsets.only(
                      right: 50.0, left: 50.0, bottom: 50.0, top: 10.0),
                  child: TextFormField(
                    style: textStyle,
                    validator: (String input) {
                      if (input.isEmpty) {
                        return 'Enter Username';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter Username',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String input) {
                      setState(() {
                        username = input;
                      });
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: 50.0, left: 50.0, bottom: 50.0, top: 5.0),
                    child: TextFormField(
                      style: textStyle,
                      validator: (String input) {
                        if (input.isEmpty) {
                          return 'Enter Password';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String input) {
                        setState(() {
                          password = input;
                        });
                      },
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        right: 50.0, left: 50.0, bottom: 50.0, top: 20.0),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.deepPurple[200])),
                        color: Theme.of(context).accentColor,
                        child: Text('Login', textScaleFactor: 1.5),
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState.validate()) {
                              debugPrint(username);
                              debugPrint(password);
                            }
                          });
                        })),
              ],
            )),
      ),
    );
  }
}
