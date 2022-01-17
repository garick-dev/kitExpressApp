import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';


class SearchInput extends StatefulWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {


  /////////////////////////GLOBAL//////////////////////

  //fonts

  static const montserrat600 = "Montserrat600";


  //color

  static const blackColor = Color(0xFF0D0903);
  static const greyColor = Color(0xFFBDBDBD);

//letterSpacing
  static const customLetterSpacing = -0.4;

  /////////////GLOBAL////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container(
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
        );

  }
}
