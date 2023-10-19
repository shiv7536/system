import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNameController = TextEditingController();
  TextEditingController emailNameController = TextEditingController();







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Signup',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,

            decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 1,
                  image: AssetImage("assets/logo.png"),
                )),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 370),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: firstNameController,
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
                                  color: Colors.black, style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your first name',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'Mandatory';
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: lastNameController,
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
                                  color: Colors.black, style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your last name',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'Mandatory';
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      maxLength: 10,
                      controller: mobileNameController ,
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
                                  color: Colors.black, style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your mobile number',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'Mandatory';
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailNameController,
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
                                  color: Colors.black, style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          hintText: 'Enter your email',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          return null;
                        }
                        return 'Mandatory';
                      },
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: (){
                        if (formKey.currentState!.validate())
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('${firstNameController.text + lastNameController.text} Signup successfully')));
                        if (formKey.currentState!.validate())
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                        //debugPrint('${firstNameController.text}');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(20))),

                        child: Text('Signup',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),


                      ),


                    )

                  ],

                ),
              ),
            ),
          ),

        ),

      ),

    );
  }
}
