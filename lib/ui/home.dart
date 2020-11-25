import 'package:flutter/material.dart';
import 'package:flutter_web/ui/home/descktop_home.dart';
import 'package:flutter_web/ui/home/mobile_home.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(

        mobile: MobileHome(),
        tablet: DesktopHome(),
       desktop: DesktopHome(),
      // watch: Container(color: Colors.purple),
    );
  }
}
