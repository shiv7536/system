import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'FirstScreen.dart';



void main (){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:FirstScreen()));
}