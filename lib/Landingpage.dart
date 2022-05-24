import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(150.0, 10, 50, 0),
              child: Text(
                'FRESHER SPACE',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150.0, 10, 50, 0),
              child: Text(
                'WELCOME TO THE FREHER SPACE \nSELECT AND LEARN THE SKILL FREE\n  \nHERE LEARN AND ENROLL INTO THE COURSE ALSO VISIT TO THE INDUSTRIAL TRAINING , BOOTCAMP , INTERNSHIP AND JOB SECTION  ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150.0, 10, 20, 0),
              child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Image(
        width: width,
        image: NetworkImage(
            'https://cdn.dribbble.com/users/4214751/screenshots/10503785/website_vec_2-01.png'),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else
          return Column(children: pageChildren(constraints.biggest.width));
      },
    );
  }
}
