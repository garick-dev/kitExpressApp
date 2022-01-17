import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testproject/custom_icons.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DataUser extends StatelessWidget {
  const DataUser({Key? key}) : super(key: key);


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

    final _maskTel = MaskTextInputFormatter(
        mask: '+7 (###) ### ## ##', filter: {"#": RegExp(r'[0-9]')});

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Данные получателя",
            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),
          const Padding(padding: EdgeInsets.only(top: 20.0),),
          Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                style: const TextStyle(fontSize: 16, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: blackColor),
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
                  hintText: 'Имя',
                  hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                ),
              ),),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 4,
              decoration: const BoxDecoration(
                  color: orangeColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(3))),
            ),
          ],),
          Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                inputFormatters: [_maskTel],
                style: const TextStyle(fontSize: 16, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: blackColor),
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
                  hintText: '+7 (000) 000 00 00',
                  hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите ваш номер телефона';
                  }
                  if (value.length < 11) {
                    return 'Неверный формат номера телефона';
                  }
                  return null;
                },
              ),),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 4,
              decoration: const BoxDecoration(
                  color: orangeColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(3))),
            ),
          ],),




        ],),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        const BorderRadius.all(Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0,0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
