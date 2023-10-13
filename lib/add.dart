import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Add',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
