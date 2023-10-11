import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text(
          //Icon(Icons.home),
          'Home',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),

        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child:Column(children: [

        ]) ,
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 1, image: AssetImage("assets/Grou.PNG"))),
      ),

    );

  }
}
