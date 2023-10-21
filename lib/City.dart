import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: Center(
            child: Text(
          'City',
          style: GoogleFonts.poppins(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Fatehpur Sikri',
                style: GoogleFonts.poppins(
                    color: Colors.indigo,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    decoration: TextDecoration.underline),
              ),
              Text(
                'Today News',
                style: GoogleFonts.poppins(
                  color: Colors.indigo,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
              Text(
                'Telangana: राहुल गांधी के दौरे पर के. कविता ने ली चुटकी, कहा- वे तो कागजी शेर हैं, उन्हें राज्य की समझ नहीं',
                style: GoogleFonts.shrikhand(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'राहुल गांधी पर कटाक्ष करते हुए चंद्रशेखर राव की बेटी के. कविता ने कहा, राहुल गांधी कागजी शेर हैं। उन्हें स्थानीय राजनीति की समझ नहीं है। राहुल गांधी बब्बर शेर नहीं हैं, वे सिर्फ एक कागजी शेर हैं। तेलंगाना विधानसभा चुनावों को लेकर तमाम राजनीतिक दलों ने कमर कस ली है। अपनी-अपनी जीत का दावा करते हुए पार्टी के नेताओं ने राज्य चुनावी रैलियों को संबोधित किया। कांग्रेस की जीत पर भरोसा जताते हुए राहुल गांधी भी तेलंगाना के तीन दिवसीय दौरे पर पहुंचे थे। वहीं भाजपा के वरिष्ठ नेताओं ने भी राज्य में चुनावी रैलियों को संबोधित किया। आरोप-प्रत्यारोप की राजनीति के बीच एक-दूसरे पर जमकर कटाक्ष किए जा रहे हैं। जहां एक तरफ राहुल गांधी ने बीआरएस की सरकार को भ्रष्ट करार दिया था। जिसके बाद से मुख्यमंत्री चंद्रशेखर राव की बेटी और बीआरएस एमएलसी के. कविता ने कांग्रेस नेता राहुल गांधी पर जमकर हमला किया। ',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
