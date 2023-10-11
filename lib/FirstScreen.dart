import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!!',
                style: GoogleFonts.adamina(
                    fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
              Text(
                'To visit',
                style: GoogleFonts.adamina(
                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)


            ],
          )),
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 1,
                fit: BoxFit.cover,
                image: AssetImage('assets/image.jpg'))),
      ),
    );
  }
}
