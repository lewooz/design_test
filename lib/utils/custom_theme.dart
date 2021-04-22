import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {

  static ThemeData customThemeData() {

    BottomNavigationBarThemeData getBottomNavigationBarThemeData() {
      return BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 20,
          selectedItemColor:  Color(0xff53CAFC),
          unselectedItemColor: Color(0xff2A7797),
      );
    }

    return ThemeData(
        primaryColor: Color(0xff48C7FC),
        primaryColorLight: Color(0xffEDF9FF),
        primaryColorDark: Color(0xff2A7797),
        highlightColor: Color(0xffC8EEFE),
        accentColor: Colors.white,
        textTheme: GoogleFonts.nunitoSansTextTheme().apply(bodyColor: Colors.white , displayColor: Colors.white, decorationColor: Colors.white),
        bottomNavigationBarTheme: getBottomNavigationBarThemeData()
    );

  }

}
