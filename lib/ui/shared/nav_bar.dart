import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(

        child: Row(
          children: [
            Image.asset('assets/icons/logo.png', fit: BoxFit.cover,),
            Spacer(),
            Text('HOME' , style: _TextStyle(),),
            _sixeBox(15, 0),
            Text('ABOUT', style: _TextStyle(),),
            _sixeBox(15, 0),
            Text('CONTACT', style: _TextStyle(),),
          ],
        ),
      ),
    );
  }
  Widget _sixeBox(double value , value2){
    return SizedBox(width: value, height: value2,);
  }
   _TextStyle(){
    return GoogleFonts.mcLaren(
      textStyle: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: .5),
    );
  }
}
