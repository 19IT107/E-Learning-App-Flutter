import 'package:charuvidya/Screens/SignIn/Signin.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'CharuVidya',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    )),
                Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            labelText: 'First Name',
                            icon: Icon(
                              Icons.textsms,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            labelText: 'Last Name',
                            icon: Icon(
                              Icons.textsms,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            labelText: 'Email Id',
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            labelText: 'Password',
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            labelText: ' Confirm Password',
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton.icon(
                      textColor: Colors.white,
                      color: Colors.black,
                      label: Text(
                        'Register',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      icon: Icon(
                        EvaIcons.doneAll,
                        size: 18.0,
                      ),
                      onPressed: () {},
                    ),
                    ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ),
                      Text('or'),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Already have an account?'),
                        FlatButton(
                          textColor: Colors.black,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: SignIn(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
              ],
            )));
  }
}
