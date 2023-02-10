import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animation_list/animation_list.dart';
import 'package:milkywy/AppUtils.dart';
class List_Page extends StatefulWidget {
  const List_Page({Key? key}) : super(key: key);

  @override
  State<List_Page> createState() => _List_PageState();
}

class _List_PageState extends State<List_Page> {
  Widget _buildTile(String name,String nick,String index) {
    return Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.orange.shade200,
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text("${index}",style: GoogleFonts.lato(
              color: CupertinoColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${name}",style: GoogleFonts.lato(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),),
                  Text("${nick}",style: GoogleFonts.lato(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
           Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward_ios,size: 28,color: CupertinoColors.black,),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: Text("Galaxy Planets",style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
            letterSpacing: 1
        ),),

      ),
      body: AnimationList(
          children: Utils.planet_List.map((item) {
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context,'detail',arguments: [
                  item['name'],
                  item['nick'],
                  item['detail'],
                  item['pic'],
                ]);
              },
                child: _buildTile(item['name'], item['nick'],item['index']));
          }).toList(),
        duration: 5000,
        reBounceDepth: 10.0,

      ),
       backgroundColor: CupertinoColors.black,
    );
  }
}
