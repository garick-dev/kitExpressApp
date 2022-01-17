import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class SearchAppBar extends StatefulWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {


  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans700 = "OpenSans700";

  //color
  static const orangeColor = Color(0xFFF49613);
  static const yellowColor = Color(0xFFFBC11D);
  static const blackColor = Color(0xFF0D0903);
  static const greyColor = Color(0xFFBDBDBD);

//letterSpacing
  static const customLetterSpacing = -0.4;

  /////////////GLOBAL////////////////////////

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                child: Text(
                  "Поиск",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: customLetterSpacing,
                    fontFamily: openSans700,
                    overflow: TextOverflow.fade,
                  ),
                ),),
              Icon(CustomIcon.close, color: Colors.white, size: 17,),
            ],),
          const Padding(padding: EdgeInsets.only(top: 10.0),),
          Container(
            child: TextFormField(
              style: const TextStyle(fontSize: 16, fontFamily: montserrat600, letterSpacing: customLetterSpacing, color: blackColor),
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                isDense: true,
                hintText: 'Поиск товаров и услуг',
                hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat600, letterSpacing: customLetterSpacing, color: greyColor),
                contentPadding: EdgeInsets.only(top: 12.0),
                prefixIcon: Icon(Icons.search, size: 24, color: greyColor),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
        ],);

  }
}
