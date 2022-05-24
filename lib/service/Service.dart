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
    title: "Internship",
    image: "assets/Internship.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "JOB",
    image: "assets/JOB.jpg",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Live Project",
    image: "assets/Project.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Industrial Training",
    image: "assets/training.jpg",
    color: Color(0xFFFFE0E0),
  ),
  Service(
    id: 5,
    title: "Bootcamp",
    image: "assets/Bootcamp.jpg",
    color: Color(0xFFFFE0E0),
  ),
];
