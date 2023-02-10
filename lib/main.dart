
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailPage.dart';
import 'ListPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   routes: {
      '/' : (context) => MyApp(),
     'list' : (context) => List_Page(),
     'detail' : (context) => Detail_Page(),
   }
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: Duration(seconds: 5))
      ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Stack(
        children: [
          Container(
              height: h,
              width: w,
              child: Image(
                image: AssetImage('assets/myimages/galaxy.png'),
                fit: BoxFit.cover,
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
                height: h / 7.5,
                width: w / 3,
                child: Image(
                  image: AssetImage('assets/myimages/sun.png'),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: h/12,
            child: Container(
              height: h/25,
              width: w,
              decoration: BoxDecoration(
                color: CupertinoColors.black,
              ),
              child: Center(
                child: Text("Galaxy Planets",style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                    letterSpacing: 1
                ),),
              ),
            ),
          ),
          Positioned(
            top: h / 4,
            left: w / 3.25,
            child: Container(
              height: h / 2,
              width: w / 2.6,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white60, width: 1)),
            ),
          ),
          Positioned(
            top: h / 2,
            left: w / 4,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 15,
                  width: w / 8,
                  child: Image(
                    image: AssetImage('assets/myimages/mercury.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 4,
            left: w / 4.5,
            child: Container(
              height: h / 2,
              width: w / 1.8,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white60, width: 1)),
            ),
          ),
          Positioned(
            top: h / 1.8,
            left: w / 1.6,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 10,
                  width: w / 8,
                  child: Image(
                    image: AssetImage('assets/myimages/venus.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 4,
            left: w / 6.5,
            child: Container(
              height: h / 2,
              width: w / 1.4,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white60, width: 1)),
            ),
          ),
          Positioned(
            top: h / 1.6,
            left: w / 2.6,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 11,
                  width: w / 4,
                  child: Image(
                    image: AssetImage('assets/myimages/earth.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 4,
            left: w / 15.5,
            child: Container(
              height: h / 2,
              width: w / 1.1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white60, width: 1)),
            ),
          ),
          Positioned(
            top: h / 4,
            left: w / 1.8,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 14,
                  width: w / 6,
                  child: Image(
                    image: AssetImage('assets/myimages/mars.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 1.4,
            left: w / 1.8,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 12,
                  width: w / 5,
                  child: Image(
                    image: AssetImage('assets/myimages/jupiter.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 7,
            left: w / 5,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 12,
                  width: w / 3,
                  child: Image(
                    image: AssetImage('assets/myimages/saturn.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 1.3,
            left: w / 4,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 8,
                  width: w / 5,
                  child: Image(
                    image: AssetImage('assets/myimages/uranus.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h / 1.2,
            left: w / 2,
            child: RotationTransition(
              turns: animationController,
              child: Container(
                  height: h / 15,
                  width: w / 8,
                  child: Image(
                    image: AssetImage('assets/myimages/neptunr.png'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            top: h/1.1,
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('list');
              },
              child: Container(
                height: h/25,
                width: w,
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                ),
                child: Center(
                  child: Text("Let's Start Journey of Galaxy   ➡️",style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                      letterSpacing: 1
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: CupertinoColors.black,
    );
  }
}
