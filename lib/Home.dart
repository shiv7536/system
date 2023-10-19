import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/BottomNavBarCustom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Home',
            style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.indigo,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 40),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: Border.all(
                        color: Colors.indigo,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('INVERTER BATTERIES',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/icon.png")),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('160Ah',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10, color: Colors.indigo)),
                                  Text(
                                    '48 Months',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10, color: Colors.indigo),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: Border.all(
                        color: Colors.indigo,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('E-Rikshaw Batteries',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/batt.png")),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('160Ah',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10, color: Colors.indigo)),
                                  Text(
                                    '48 Months',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10, color: Colors.indigo),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            border: Border.all(color: Colors.indigo, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text('Download PDF',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            border: Border.all(color: Colors.indigo, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text('Visit Website',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
