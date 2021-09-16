import 'package:charuvidya/Screens/SignIn/SignUp.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SignIn> {
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
                  'CharuVidhya',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
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
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
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
                  'Sign in with Email',
                  style: TextStyle(fontSize: 18.0),
                ),
                icon: Icon(
                  EvaIcons.email,
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
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton.icon(
                textColor: Colors.white,
                color: Colors.black,
                label: Text(
                  'Sign in with Google',
                  style: TextStyle(fontSize: 18.0),
                ),
                icon: Icon(
                  EvaIcons.google,
                  size: 18.0,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text("Don't have an account?"),
                  FlatButton(
                    textColor: Colors.black,
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: SignUp(),
                            type: PageTransitionType.bottomToTop),
                      );
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
    // body: Container(
    //   child: Center(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(bottom: 10.0),
    //           child: Text(
    //             'Sign In',
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //         Form(
    //           // key: _formStateKey,
    //           autovalidate: true,
    //           child: Column(
    //             children: <Widget>[
    //               Padding(
    //                 padding: EdgeInsets.all(10),
    //                 child: TextFormField(
    //                   // validator: validateEmail,
    //                   // onSaved: (value) {
    //                   //   _emailId = value;
    //                   // },
    //                   keyboardType: TextInputType.emailAddress,
    //                   // controller: _emailIdController,
    //                   decoration: InputDecoration(
    //                     focusedBorder: OutlineInputBorder(
    //                         borderSide: new BorderSide(
    //                             color: Colors.blue,
    //                             width: 2,
    //                             style: BorderStyle.solid)),
    //                     labelText: 'Email Id',
    //                     icon: Icon(
    //                       Icons.email,
    //                       color: Colors.blue,
    //                     ),
    //                     fillColor: Colors.white,
    //                     labelStyle: TextStyle(
    //                       color: Colors.blue,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    //                 child: TextFormField(
    //                   // validator: validatePassword,
    //                   // onSaved: (value) {
    //                   //   _password = value;
    //                   // },
    //                   obscureText: true,
    //                   // controller: _passwordController,
    //                   decoration: InputDecoration(
    //                     focusedBorder: OutlineInputBorder(
    //                         borderSide: new BorderSide(
    //                             color: Colors.blue,
    //                             width: 2,
    //                             style: BorderStyle.solid)),
    //                     labelText: 'Password',
    //                     icon: Icon(
    //                       Icons.email,
    //                       color: Colors.blue,
    //                     ),
    //                     fillColor: Colors.white,
    //                     labelStyle: TextStyle(
    //                       color: Colors.blue,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(bottom: 15.0),
    //           child: FlatButton.icon(
    //               color: Colors.white,
    //               onPressed: () {
    //                 print("Google sign in...");
    //               },
    //               icon: Icon(EvaIcons.google),
    //               label: Text('Sign in with google')),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(bottom: 15.0),
    //           child: FlatButton.icon(
    //               color: Colors.white,
    //               onPressed: () {
    //                 print("Email sign in...");
    //               },
    //               icon: Icon(EvaIcons.email),
    //               label: Text('Sign in with Email')),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 100.0),
    //           child: Row(
    //             children: [
    //               Text(
    //                 'New Here?',
    //                 style: TextStyle(color: Colors.black),
    //               ),
    //               MaterialButton(
    //                 onPressed: () {
    //                   Navigator.pushReplacement(
    //                     context,
    //                     PageTransition(
    //                         child: SignUp(),
    //                         type: PageTransitionType.bottomToTop),
    //                   );
    //                 },
    //                 child: Text('Create an account',style: TextStyle(color: Colors.black),),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   // decoration: BoxDecoration(
    //   //   image: DecorationImage(
    //   //     image: AssetImage('images/landingpage-bg.png'),
    //   //     fit: BoxFit.fitHeight,
    //   //     // colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
    //   //   ),
    //   // ),
    // ),
    // );
  }
}
