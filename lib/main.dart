import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:webfresher/service/ServiceSection.dart';

import 'About/aboutsection.dart';
import 'Barmenu/menu.dart';
import 'CAtegory/catgory.dart';
import 'Courses/course.dart';
import 'Landingpage.dart';
import 'Landingpage/navbar.dart';
import 'Learning/Instrctionpage.dart';

import 'Team/ServiceSection.dart';
import 'footer/footer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const option = FirebaseOptions(
      apiKey: "AIzaSyBI2AQEqZpaSLJWrQm-9_-xODLKNFQiR-g",
      authDomain: "fresherweb-57064.firebaseapp.com",
      projectId: "fresherweb-57064",
      storageBucket: "fresherweb-57064.appspot.com",
      messagingSenderId: "1026571052286",
      appId: "1:1026571052286:web:ef48facc20486403edf1af",
      measurementId: "G-4Y720SBBNT");
  await Firebase.initializeApp(options: option);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freher Space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height, //to adjust height according to screen size
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromRGBO(225, 112, 85, 1.0),
              Color.fromRGBO(254, 201, 87, 1.0),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MakeNavbar(),
              LandingPage(),
              Sorting(),
              Categary(),
              // Courses(),
              SizedBox(
                height: 100,
              ),
              InstructionPage(),
              SizedBox(
                height: 30,
              ),
              ServiceSection(),
              SizedBox(
                height: 30,
              ),
              Teamservice(),
              SizedBox(
                height: 30,
              ),
              AboutSection(),
              SizedBox(
                height: 200,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
