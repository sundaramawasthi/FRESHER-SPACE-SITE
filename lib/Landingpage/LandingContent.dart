import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

class LandingContent extends StatelessWidget {
  const LandingContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration duration;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 12,
        vertical: 26,
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeIn(
                duration: duration = const Duration(milliseconds: 250),
                child: Text(
                  'WELCOME TO THE \n FRESHER SPACE ',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      letterSpacing: 1.3),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FadeIn(
                duration: duration = const Duration(milliseconds: 250),
                child: Text(
                  '100% free online learning platform\n Where you can enroll courses and learn free. ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SourceSansPro'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  FadeIn(
                      duration: duration = const Duration(milliseconds: 250),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        elevation: 1,
                        onPressed: () {},
                        child: Text(
                          'Get started for free',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
        ],
      ),
    );
  }
}
