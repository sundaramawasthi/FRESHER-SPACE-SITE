import 'package:flutter/material.dart';

class Navbutton extends StatefulWidget {
  const Navbutton({Key? key}) : super(key: key);

  @override
  State<Navbutton> createState() => _NavbuttonState();
}

class _NavbuttonState extends State<Navbutton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          child: Text(
            '',
            style: TextStyle(color: Colors.white, fontFamily: 'SourceSansPro'),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Navbutton()));
            },
            child: Text("Profile")),
      ],
    );
  }
}
