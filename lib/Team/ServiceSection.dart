import 'package:flutter/material.dart';

import 'Sectiontile.dart';
import 'Service.dart';
import 'ServiceCard.dart';
import 'ServiceConstant.dart';

class Teamservice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Meet Our Team ",
            subTitle: " ",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => TeamCard(index: index)),
          )
        ],
      ),
    );
  }
}
