import 'package:app/themes/textstyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:app/themes/ui_paramiters.dart';
import 'package:app/themes/themes.dart';
import 'package:app/widgets/HomeWidget.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
     double ScreenHeight=UIParameters.getHeight(context);
    double Screenwidth =UIParameters.getWidth(context);

    return Scaffold(
       appBar: AppBar(
        toolbarHeight: ScreenHeight*0.19,
        iconTheme: IconThemeData(color: AppColors.Spaceblack, size: 35),
        backgroundColor: AppColors.Spaceblack,
        flexibleSpace: ClipPath(
          clipper: CurvedBottomClipper(),
          child: Container(
           child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 0.025 * ScreenHeight,
                ),
                child: SizedBox(
                  height: 0.1 * ScreenHeight,
                  width: 0.15 * ScreenHeight,
                  child: Image.asset("assets/logo/logospace.png"),
                ),
                ),
            ],
           ),
          ),
        ),
        elevation: 0,
       
      ),
     endDrawer: Drawer(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: ScreenHeight * 0.25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin:Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: <Color>[AppColors.gradientGray, AppColors.Spaceblack]
                     ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Screenwidth*0.2
                  ),
                  child: Row(
                    children: [
                       Text("چونەژوورەوە", style: StyleText.drawerEnter),
                       Padding(padding: EdgeInsets.only(left: Screenwidth*0.025),child: Icon(Icons.login, color: AppColors.spacewhite, size: 30,))
                  ],
                  ),
                  ),
              ),
      
              ListTile(
                title: Text("سەرەکی", style: StyleText.drawerItems, textAlign: TextAlign.right),
                trailing: Icon(Icons.home, color: AppColors.Spaceblack,),
              ),
      
              ListTile(
                title: Text("زمان", style: StyleText.drawerItems, textAlign: TextAlign.right,),
                trailing: Icon(Icons.language, color: AppColors.Spaceblack,),
              ),
      
              ListTile(
                title: Text("دەربارە", style: StyleText.drawerItems, textAlign: TextAlign.right,),
                trailing: Icon(Icons.info_outline, color: AppColors.Spaceblack,),
              ),
      
            ],
          ),
        ),

    );
  }
}