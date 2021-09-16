import 'package:charuvidya/Screens/landingpage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(EvaIcons.google)
                      Text(
                        'userid@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Text(
                'Settings',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 1),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Option 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Option 2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Option 3',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Option 4',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Option 5',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                tileColor: Colors.grey.shade300,
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: LandingPage(),
                        type: PageTransitionType.bottomToTop),
                  );
                },
                child:
                    Text('Sign Out', style: TextStyle(color: Colors.lightBlue)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
