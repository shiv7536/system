import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/BottomNavBarCustom.dart';
import 'package:system/Signup.dart';

import 'ForgotScreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Login Page',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 500, left: 20, right: 20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    // Center(child: Text('SYSTEM\Welcome!')),
                    TextFormField(
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'This field cant be Emply';
                      },
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      // autofocus: true,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          counterText: "",
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  strokeAlign: Checkbox.width)),
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
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your number',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'This field cant be Emply';
                      },
                      obscureText: true,
                      maxLength: 6,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          counterText: "",
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  strokeAlign: Checkbox.width)),
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
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your password',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotScreen()));
                      },
                      child: Text(
                        'Forgot Password',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          //backgroundColor: Colors.black38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavBarCustom(selectedIndex: 0),
                            ),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Login',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Text('Dont have an account',style: GoogleFonts.poppins(fontSize: 14),),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                        }, child: Text('Signup',style: GoogleFonts.poppins(color: Colors.indigo,fontSize: 16,fontWeight: FontWeight.bold),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            opacity: 1,
            image: AssetImage("assets/logo.png"),
          )),
        ),
      ),
    );
  }
}
