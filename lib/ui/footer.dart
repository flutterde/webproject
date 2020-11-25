import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
  var formatter = new DateFormat('y');
  String formattedDate = formatter.format(now);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              IconButton(icon: FaIcon(FontAwesomeIcons.facebook , color: Colors.white,) , onPressed: (){},),
              IconButton(icon: FaIcon(FontAwesomeIcons.instagramSquare , color: Colors.white,) , onPressed: (){},),
              IconButton(icon: FaIcon(FontAwesomeIcons.youtubeSquare , color: Colors.white, ) , onPressed: (){},),
              IconButton(icon: FaIcon(FontAwesomeIcons.twitterSquare , color: Colors.white,) , onPressed: (){},),


            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 2,
              width: MediaQuery.of(context).size.width*0.12,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CopyRight© ${formattedDate} WebsiteName' , style: TextStyle(
                color: Colors.white,
              ),),

            ],
          ),
        ],
      ),
    );
  }
}
