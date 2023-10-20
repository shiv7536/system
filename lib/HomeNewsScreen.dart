import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/NewsDetail.dart';

class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({super.key});

  @override
  State<HomeNewsScreen> createState() => _HomeNewsScreenState();
}

class _HomeNewsScreenState extends State<HomeNewsScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Latest News'.toUpperCase(),
                  style: GoogleFonts.poppins(
                    color: Colors.indigo,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    // height: 60,
                    width: double.infinity,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3)),

                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 3))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cities',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_outlined),
                              ],
                            ),
                          ),
                        ),
                        if (isExpanded)
                          Container(
                            child: Column(
                              children: [
                                Text('Fatehpur Sikri',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Gurugram',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Mathura',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Jaipur',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Noida',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Alwar',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Ajmer',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                                Text('Agra',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3)),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              //isExpanded = !isExpanded;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 3))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Categories',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_outlined),
                              ],
                            ),
                          ),
                        ),
                        //if (isExpanded)
                          Container(
                            child: Column(
                              children: [
                                Text('Cricket',
                                    style: GoogleFonts.palanquin(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5,
                                    )),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.view_sidebar,
              color: Colors.indigo,
            ),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            }),
        // automaticallyImplyLeading: false,

        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'News',
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 100,
              shrinkWrap: true,
              itemBuilder: (context, Index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewDetails(),
                          ));
                    },
                    child: Container(
                      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'assets/news.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      color: Colors.black,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
