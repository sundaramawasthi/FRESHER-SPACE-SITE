import 'package:flutter/material.dart';

class CatigoryW extends StatelessWidget {
  String image;
  String text;
  Color color;

  CatigoryW({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 570,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0x9F3D416E),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 539,
            height: 179,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
