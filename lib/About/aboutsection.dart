import 'package:flutter/material.dart';

import '../Team/ServiceConstant.dart';
import 'AboutSectiontext.dart';
import 'ExperienceCard.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ABOUT US ',
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
              // AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Welcome to Fresher Space ,Here we provide the valuble content to the user, We are the small team who is looking to provide good content that is usefull to the user. I am CSE student currenty doing my graduation from Uttar Pradesh .I have few month experice while using flutter and Android studio.  ",
                ),
              ),
              ExperienceCard(numOfExp: "06"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Welcome to Fresher Space ,Here we provide the valuble content to the user, We are the small team who is looking to provide good content. Welcome to Fresher Space ,Here we provide the valuble content to the user, We are the small team who is looking to provide good content. .",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     MyOutlineButton(
          //       imageSrc: "assets/images/hand.png",
          //       text: "Hire Me!",
          //       press: () {},
          //     ),
          //     SizedBox(width: kDefaultPadding * 1.5),
          //     DefaultButton(
          //       imageSrc: "assets/images/download.png",
          //       text: "Download CV",
          //       press: () {},
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
