import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/NewsDetail.dart';


class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({super.key});

  @override
  State<HomeNewsScreen> createState() => _HomeNewsScreenState();
}

class _HomeNewsScreenState extends State<HomeNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
            ListView.builder(physics: NeverScrollableScrollPhysics(),itemCount: 100,
shrinkWrap: true,
itemBuilder: (context, Index){
return Padding(

  padding: const EdgeInsets.all(8.0),

  child: InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => NewDetails(),));
    },
    child: Container(
      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Container(
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ),

          child: Image.asset('assets/news.png',fit: BoxFit.fill,),

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
