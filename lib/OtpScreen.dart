import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import 'Login.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.indigo,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'OTP',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // TextField(
                //   autofocus: true,
                //   style: TextStyle(color: Colors.red),
                //   decoration: InputDecoration(
                //       disabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20),
                //           borderSide: BorderSide(
                //               color: Colors.black,
                //               style: BorderStyle.solid,
                //               strokeAlign: Checkbox.width)),
                //       focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20),
                //           borderSide: BorderSide(
                //               color: Colors.black, style: BorderStyle.solid)),
                //       enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20),
                //           borderSide: BorderSide(
                //               color: Colors.black, style: BorderStyle.solid)),
                //       hintText: 'Enter OTP',
                //       hintStyle: GoogleFonts.poppins(
                //           color: Colors.black, fontWeight: FontWeight.bold)),
                // ),
                OtpPinField(otpPinFieldDecoration: OtpPinFieldDecoration.custom,onSubmit: (value){}, onChange: (value){},),
               // Color(Colors.white),

                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Submit',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 1, image: AssetImage("assets/sharma.PNG"))),
      ),

    );

  }
}
