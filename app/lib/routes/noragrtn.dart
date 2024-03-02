import 'package:app/themes/textstyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:app/themes/ui_paramiters.dart';
import 'package:app/themes/themes.dart';
import 'package:app/widgets/HomeWidget.dart';
import 'package:app/themes/textstyle.dart';

class noragrtn extends StatefulWidget {
  const noragrtn({super.key});

  @override
  State<noragrtn> createState() => _noragrtnState();
}

class _noragrtnState extends State<noragrtn> {
  String? dropdownValue;
  String? dropdownValue2;
  @override
  Widget build(BuildContext context) {
    double screenHeight = UIParameters.getHeight(context);
    double screenWidth = UIParameters.getWidth(context);
    return const Scaffold(
       backgroundColor: AppColors.spacewhite,
      
    );
  }
}