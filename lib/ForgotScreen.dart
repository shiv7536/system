import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/Login.dart';

import 'OtpScreen.dart';
class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
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
          'Forgot Password',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),

          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,

                    validator: (value) {

                      if(value !=null &&  value.isNotEmpty){
                        return null;
                      };
                      return 'This field cant be emply';
                    },
                    maxLength: 10,

                    style: TextStyle(color: Colors.red),

                    decoration: InputDecoration(
                      counterText: "",
                      errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              strokeAlign: Checkbox.width)) ,
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                strokeAlign: Checkbox.width)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                strokeAlign: Checkbox.width)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.black, style: BorderStyle.solid)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(width: 3,
                                color: Colors.black, style: BorderStyle.solid)),
                        hintText: 'Enter Mobile Number',
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      if(formKey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => OtpScreen()));
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Send OTP',
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
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 1, image: AssetImage("assets/logo.png"))),
      ),

    );
  }
}
