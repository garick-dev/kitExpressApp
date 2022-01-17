import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testproject/custom_icons.dart';

class AddressFromWhere extends StatelessWidget {
  const AddressFromWhere({Key? key}) : super(key: key);


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
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Откуда",
            style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),
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
                  hintText: 'Страна, город, улица, дом',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
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
                      hintText: 'Квартира/офис',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                    ),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],),
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
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
                      hintText: 'Индекс',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                    ),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],),
            ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
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
                      hintText: 'Подъезд',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                    ),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],),
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
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
                      hintText: 'Этаж',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                    ),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],),
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
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
                      hintText: 'Домофон',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                    ),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],),
            ],),
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
                  hintText: 'Комментарий курьеру',
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
