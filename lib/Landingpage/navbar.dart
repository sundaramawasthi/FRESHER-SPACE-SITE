import 'package:flutter/material.dart';

import '../About/aboutsection.dart';
import '../Favorite/Favorite.dart';
import '../Landingpage.dart';
import '../Onboardingpage/screens/Login.dart';

class MakeNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar(); //different navbar for different layout
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar(); //we will display desktop navbar
        } else
          return MobileNavbar();
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 40, 10, 10),
            child: Text(
              'FRESHER SPACE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              // Text(
              //   'Home',
              //   style: TextStyle(color: Colors.white, fontSize: 20),
              // ),
              // SizedBox(
              //   width: 30,
              // ),
              // Text(
              //   'About US',
              //   style: TextStyle(color: Colors.white, fontSize: 20),
              // ),
              // SizedBox(
              //   width: 30,
              // ),
              // Text(
              //   'COURSES',
              //   style: TextStyle(color: Colors.white, fontSize: 20),
              // ),
              // SizedBox(
              //   width: 30,
              // ),
              //nw we will make button
              CircleAvatar(
                backgroundImage: NetworkImage(''),
                backgroundColor: Colors.white38,
                radius: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Favorite(
                    //               sem: sem,
                    //              skill: 'skill',
                    // )));
                  }, //we'll leave it empty
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your Favorite',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: MaterialButton(
              //     color: Colors.orange,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(15))),
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => LoginPage()));
              //     }, //we'll leave it empty
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         'Get Started',
              //         style: TextStyle(color: Colors.white, fontSize: 25),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(
            'FRESHER SPACE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Row(
              children: [
                // Text(
                //   'Home',
                //   style: TextStyle(color: Colors.white, fontSize: 20),
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                // Text(
                //   'About US',
                //   style: TextStyle(color: Colors.white, fontSize: 20),
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                // Text(
                //   'Course',
                //   style: TextStyle(color: Colors.white, fontSize: 20),
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                //now we will make button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    onPressed: () {}, //we'll leave it empty
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your Favorite',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
