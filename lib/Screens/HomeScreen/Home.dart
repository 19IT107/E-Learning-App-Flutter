import 'package:charuvidya/Screens/DetailSection/CourseDetail.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8),
              child: Text(
                'Featured',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 270,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: CourseDetail('Computer Concepts & Programming with C', 'Priyanka', '4.5', '2,000', '499', 'assets/images/c.jpeg'),
                            type: PageTransitionType.leftToRight),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/c.jpeg'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 150),
                                child: Text(
                                  'Computer Concepts & Programming with C',
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 150),
                                child: Text(
                                  'Priyanka',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 12),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    '(2,000)',
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.rupeeSign,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  Text(
                                    '499',
                                    style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: CourseDetail('Java Programming Language', 'Minal', '4.5', '2,000', '499', 'assets/images/java.jpeg'),
                            type: PageTransitionType.leftToRight),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/java.jpeg'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 150),
                                child: Text(
                                  'Java Programming Language',
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 150),
                                child: Text(
                                  'Minal',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 12),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    '(2,000)',
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.rupeeSign,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  Text(
                                    '499',
                                    style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/c.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Computer Concepts & Programming with C',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Priyanka',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/java.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Java Programming Language',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Minal',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'New',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 270,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/java.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Java Programming Language',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Minal',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/c.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Computer Concepts & Programming with C',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Priyanka',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/java.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Java Programming Language',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Minal',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/c.jpeg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Computer Concepts & Programming with C',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              child: Text(
                                'Priyanka',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(2,000)',
                                  style: TextStyle(
                                      color: Colors.grey.shade700, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  '499',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
