import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Sundram Awasthi\n \n mailtosundram@gmail.com",
    image: "assets/mpro.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Komal yadav  \n innovativeKomal@gmail.com ",
    image: "assets/fpro.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Kirti Singh  \n \n ThakurKirtiSing@gmail.com",
    image: "assets/fpro.png",
    color: Color(0xFFFFF3DD),
  ),
];
