import 'package:flutter/material.dart';

class ResponseItem extends StatelessWidget {
  const ResponseItem({Key? key}) : super(key: key);

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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /////////////////////////АВАТАР//////////////////////
            SizedBox(
              width: 75,
              height: 75,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset("assets/avatar.png"),
                ),),

            ),
            /////////////////////////ИНФОРМАЦИЯ//////////////////////
            SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Анисимова Татьяна",
                              style: TextStyle(fontFamily: openSans700, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                            Icon(Icons.circle, size: 16, color: Colors.red,)
                          ],),
                        const Text("Дизайнер-интерьеров",
                          style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor),)
                      ],),
                    const Padding(padding: EdgeInsets.only(top: 10.0),),
                    const SizedBox(
                        height: 30,
                        child:Text("Добрый день! Я уже имела опыт постройки дома мечты и заказчик остдома мечты и заказчи",
                            style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor)))



                  ],))

          ],),
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
                color: greyColor,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0.0, 0.0)
            )
          ]
      ),
    );
  }
}
