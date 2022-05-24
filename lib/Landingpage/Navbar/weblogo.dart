import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class WebLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveLayOut(
//       desktopVersion: LargeLogo(),
//       mediumVersion: SmallLogo(),
//       mobileVersion: SmallLogo(),
//     );
//   }
// }

//************************** this gives the large Logo*********************************
class weblogo extends StatefulWidget {
  @override
  _weblogoState createState() => _weblogoState();
}

class _weblogoState extends State<weblogo> {
  late double _opacity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _opacity = 0;
    Future.delayed(Duration(milliseconds: 6500), () {
      if (this.mounted) {
        //setState() called after dispose()
        setState(() {
          _opacity = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('LargoLogo');
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 49,
      width: 180,
      padding: EdgeInsets.only(
        left: 12,
      ),
      child: ListView(
        //this ListView is specific for the animation Text to allow it have enough space to display
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Fresher ",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 21.3,
                    fontFamily: 'Merriweather',
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: 8,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 500),
                      opacity: _opacity,
                      child: Text(
                        'Space',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Merriweather",
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                  RotateAnimatedTextKit(
                    onTap: () {},
                    isRepeatingAnimation: false,
                    text: ["Space", "Space", "Space"],
                    // alignment: Alignment(1.0, 0.5),
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontFamily: "Merriweather",
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
// //********************** this gives the small Logo (morel like a short form)*************
// class SmallLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print('small logo');
//     return Container(
//       alignment: Alignment.center,
//       height: 50,
//       width: 50,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.blueAccent, width: 2),
//       ),
//       child: Text(
//         'FS',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 26,
//           fontFamily: 'Merriweather',
//           color: Colors.blueAccent,
//         ),
//       ),
//     );
//   }
// }
