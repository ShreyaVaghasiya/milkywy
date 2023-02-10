import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milkywy/AppUtils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key}) : super(key: key);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> with TickerProviderStateMixin{
  late AnimationController animationController;
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

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    dynamic dataList = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(duration: Duration(seconds: 2)),
            child: RotationTransition(
              turns: animationController,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: h/3,
                    width: w,
                    child: Image(image: AssetImage(dataList[3]),fit: BoxFit.cover,)),
              ),
            ),
          ),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(duration: Duration(seconds: 2)),
            child: Text("${dataList[0]}",style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: CupertinoColors.activeOrange
            ),),
          ),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(duration: Duration(seconds: 2)),
            child: Text("${dataList[1]}",style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.orange.shade200
            ),),
          ),
          Padding(padding: EdgeInsets.all(20)),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(duration: Duration(seconds: 2)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("${dataList[2]}",style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: CupertinoColors.white
              ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: CupertinoColors.black,
    );
  }
}
