import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/BottomNavBarCustom.dart';




class supervisor_account extends StatefulWidget {
  const supervisor_account({super.key});

  @override
  State<supervisor_account> createState() => _supervisor_accountState();
}

class _supervisor_accountState extends State<supervisor_account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Account',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
