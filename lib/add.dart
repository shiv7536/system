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
          'Add Visit',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Merchant Name',
                    hintStyle: GoogleFonts.poppins(color: Colors.black45)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Merchant Mobile No.',
                    hintStyle: GoogleFonts.poppins(color: Colors.black45)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Firm',
                    hintStyle: GoogleFonts.poppins(color: Colors.black45)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Address',
                    hintStyle: GoogleFonts.poppins(color: Colors.black45)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/placeholder.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 20,
              ),
              child: InkWell(
                onTap: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => TotalVisit(),
                  //     ));
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('SUBMIT',
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
            )
          ],
        ),
      ),
    );
  }
}
