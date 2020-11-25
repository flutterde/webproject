import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/ui/footer.dart';
import 'package:flutter_web/ui/shared/nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  @override
  Widget build(BuildContext context) {
    final mysize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize:Size(mysize.width , mysize.height*0.14) ,
        child: NavBar(),

      ),

      body: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _body(),
            Spacer(),
            Footer(),

          ],
        ),
      ),

    );
  }
Widget _body(){
    return Expanded(
      flex: 24,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 12,
              child: Container(
                child:Image.asset('assets/icons/img1.png', fit: BoxFit.cover,) ,
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  'Build your own website with just flutter',
                  style: GoogleFonts.mcLaren(
                    textStyle: TextStyle(color: Colors.white,
                        letterSpacing: .5 , fontSize: 40 ,
                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                    Text('Join and build your website easily and without the need to know the html, css, and other information,'
                        ' what you see in front of you is not the final form of the site'
                      , style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          onPressed: (){},
                          child: Text('Get Started', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
}
}
