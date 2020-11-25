import 'package:flutter/material.dart';
import 'package:flutter_web/ui/footer.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      key: _scaffoldKey,
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/icons/logo.png' , height: 60, ),
          ),
          centerTitle: true,
          leading: new IconButton(
              icon: Image.asset('assets/icons/menu.png'),
              onPressed: () => _scaffoldKey.currentState.openDrawer())),
      drawer: new Drawer(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.close_sharp , color: Colors.white,),

              onPressed: (){
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Color(0xFF0E0C38),
          body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(

                  'HOME',
                  style: GoogleFonts.mcLaren(
                    textStyle: TextStyle(color: Colors.white,
                      letterSpacing: .5 , fontSize: 20 ,


                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(

                  'ABOUT',
                  style: GoogleFonts.mcLaren(
                    textStyle: TextStyle(color: Colors.white,
                      letterSpacing: .5 , fontSize: 20 ,


                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(

                  'HELP',
                  style: GoogleFonts.mcLaren(
                    textStyle: TextStyle(color: Colors.white,
                      letterSpacing: .5 , fontSize: 20 ,


                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ],
            ),
          ),

        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              flex: 23,
              child: Container(
                child:Image.asset('assets/icons/img1.png', fit: BoxFit.cover,) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(

                'Build your own website with just flutter',
                style: GoogleFonts.mcLaren(
                  textStyle: TextStyle(color: Colors.white,
                    letterSpacing: .5 , fontSize: 30 ,


                    //  fontWeight: FontWeight.bold
                  ),
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
            ),
            Spacer(),
            Footer(),
          ],
        ),
      ),

    );
  }
}
