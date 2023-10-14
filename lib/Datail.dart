import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class account_balance_wallet extends StatefulWidget {
  const account_balance_wallet({super.key});

  @override
  State<account_balance_wallet> createState() => Datail();
}

class Datail extends State<account_balance_wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(



            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Profil',
              style: GoogleFonts.poppins(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image(image: AssetImage('assets/image.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('DETAILS',
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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Merchant Name : ',
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
                      hintText: 'Firm ',
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
            ])));
  }
}
