import 'package:charuvidya/Screens/HomeScreen/Home.dart';
import 'package:charuvidya/Services/VideoSettings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class CourseDetail extends StatefulWidget {
  String name = ' ';
  String iname = ' ';
  String ratings = ' ';
  String enrolledno = ' ';
  String price = ' ';
  String img = ' ';
  CourseDetail(this.name, this.iname, this.ratings, this.enrolledno, this.price,
      this.img);

  @override
  _CourseDetailState createState() => _CourseDetailState(this.name, this.iname,
      this.ratings, this.enrolledno, this.price, this.img);
}

class _CourseDetailState extends State<CourseDetail> {
  String name;
  String iname;
  String ratings;
  String enrolledno;
  String price;
  String img;
  _CourseDetailState(this.name, this.iname, this.ratings, this.enrolledno,
      this.price, this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.backward),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                    child: Home(), type: PageTransitionType.bottomToTop),
              );
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.shoppingCart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate, nisl eget tempus dapibus, erat massa pulvinar risus, in feugiat erat nunc a tortor. Duis convallis porttitor fringilla. Praesent nec egestas tortor, a faucibus magna.",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Created By $iname",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    ratings,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    enrolledno + " Enrolled",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "10 Total Hours",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: Container(
                          child: VideoDisplay(),
                        ),
                        type: PageTransitionType.leftToRight),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: SizedBox(
                    height: 200,
                    width: 400,
                    child: Stack(
                      children: [
                        Container(
                          // height: 200,
                          // width: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('$img'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black45, BlendMode.darken))),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Positioned(
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 70,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Positioned(
                            child: Text(
                              'Preview This Course',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Text(
              //   'Instructor : ' + iname,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   'Ratings : ' + ratings,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   'Enrolled Students : ' + enrolledno,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.rupeeSign,
                    color: Colors.black,
                    size: 22,
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Start Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      // width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      // width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'Add To Wishlist',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
