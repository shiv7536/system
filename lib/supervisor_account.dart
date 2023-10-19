import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:system/BottomNavBarCustom.dart';
import 'package:system/Login.dart';

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
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 110,
                width: 110,
                //color: Colors.red,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.indigo),
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),
                    color: Colors.indigo),

                child: Container(
                    child: Image(image: AssetImage("assets/detail.png"))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Shiv Sharma',
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
                ),
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '+917536078910',
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
                ),
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'QA Manager',
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
                ),
                alignment: Alignment.centerLeft,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('Logout',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text('Version 1.0.0',
                style: GoogleFonts.poppins(
                    fontSize: 18, color: Color.fromRGBO(39, 71, 146, 1))),
          ],
        ),
      ),
    );
  }
}
