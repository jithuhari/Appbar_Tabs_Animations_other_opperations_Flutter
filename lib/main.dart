import 'package:appbar_design_transparent_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/Home',
      routes: {
        // '/home': (context) => Navbar(),
        '/Home': (context) => Home(),       
      },
    ));
