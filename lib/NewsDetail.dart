import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';



class NewDetails extends StatefulWidget {
  const NewDetails({super.key});

  @override
  State<NewDetails> createState() => _NewDetailsState();
}

class _NewDetailsState extends State<NewDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Colors.indigo,
        centerTitle: true,
      title: Text('News Details',style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageSlideshow(initialPage: 0,isLoop: true,autoPlayInterval: 3000,height: 150,width: double.infinity,children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ),
                      child: Image.asset('assets/Group 47.png',fit: BoxFit.cover,),


                    ),
                  ),

                ),Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ),
                      child: Image.asset('assets/Group 48.png',fit: BoxFit.cover,),


                    ),
                  ),

                ),Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ),
                      child: Image.asset('assets/news.png',fit: BoxFit.cover,),


                    ),
                  ),

                ),

              ]),

SizedBox(height: 40,),

Text('हमास-इजरायल युद्ध: जॉर्डन के किंग अब्दुल्ला द्वितीय मिस्र के राष्ट्रपति से मिलने के लिए काहिरा हुए रवाना',style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold),),
Text('लोरेम इप्सम एक छद्म-लैटिन पाठ है जिसका उपयोग मुद्रण और टाइपसेटिंग उद्योगों में किया जाता है। 1500 के दशक के बाद से, जब एक अज्ञात प्रिंटर ने एक प्रकार की नमूना पुस्तक बनाने के लिए एक गैली टाइप किया, लोरेम इप्सम उद्योग का मानक डमी टेक्स्ट रहा है। यह न केवल पांच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टाइपसेटिंग में भी परिवर्तन हुआ है, जो अनिवार्य रूप से अपरिवर्तित है। इसने 1960 के दशक में लोरेम इप्सम पैसेज वाले लेट्रासेट शीट्स के रिलीज के साथ लोकप्रियता हासिल की, और हाल ही में एल्डस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ, जिसमें लोरेम इप्सम संस्करण शामिल हैं।'),

SizedBox(height: 50,),

              Text('VIDEO: चल हट... अवैध खनन कराता है झांसी में BJP विधायक के बेटे ने दारोगा को हड़काया, FIR दर्ज ',style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold),),
              Text('उत्तर प्रदेश के झांसी में अवैध खनन के मामले को लेकर बीजेपी विधायक के बेटे दारोगा से भिड़ गए.',style: GoogleFonts.devonshire(fontSize: 20),),
              SizedBox(height: 20,),
Text('ऐसे कठिन दिनों के दौरान, हम स्पष्ट रूप से देख रहे हैं कि इजरायल के सच्चे दोस्त कौन हैं- राष्ट्रपति इसहाक',style: GoogleFonts.devonshire(fontSize: 25),),

// Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like',style: GoogleFonts.poppins(fontSize: 20),)

            ],
          ),
        ),
      ),
    );
  }
}
