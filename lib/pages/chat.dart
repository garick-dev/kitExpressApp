import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);


  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

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
    return Scaffold (
      appBar: AppBar(
        toolbarHeight: 90,
        title:
        SizedBox(width: MediaQuery.of(context).size.width * 0.8, child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Анисимова Татьяна",
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: customLetterSpacing,
                      fontFamily: openSans700,
                      overflow: TextOverflow.fade,
                      height: 0.9,
                    ),
                  ),),
                SizedBox(
                    width: 45,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {  },
                      child: ClipRRect(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset("assets/avatar.png"),
                        ),
                      ),
                    )),

              ],),

        ),

        flexibleSpace: const GradientAppBar(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.all(15.0),
                     child: Container(
                       padding: const EdgeInsets.all(5.0),
                       child:  const Text("Добрый день! Я уже имела опыт постройки дома мечты и заказчик остался очень доволен!Выполню вашу работу за золото и драгоценности, думаю, договоримся :)Жду ответа, Татьяна, дизайнер-интерьеров. ",
                         style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),
                     ),



                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: greyColor,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0.0, 0.0)
                            )
                          ]
                      ),
                    ),
                    const Positioned(
                      bottom: 10.0,
                        right: 15.0,
                        child: Text("16:17",
                        style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor))),

                  ],),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  Stack(
                    children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 35.0),
                      child: Container(
                        child:  const Text("Добрый день, спасибо, я подумаю",
                        style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),),


                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFA9E),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: greyColor,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0.0, 0.0)
                            )
                          ]
                      ),
                    ),
                    Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: Row(children: [
                          Image.asset("assets/two-check.png"),
                          Padding(padding: EdgeInsets.only(left: 5.0),),
                          const Text("16:18",
                              style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor))
                        ],)

                    ),

                  ],),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 35.0),
                          child:  const Text("Как только решу - дам вам знать",
                                   style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: blackColor),),

                        decoration: const BoxDecoration(
                            color: Color(0xFFFFFA9E),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: greyColor,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0.0, 0.0)
                              )
                            ]
                        ),
                      ),
                      Positioned(
                          bottom: 10.0,
                          right: 10.0,
                          child: Row(children: const [
                            Icon(Icons.check, size: 20, color: greyColor,),
                            Padding(padding: EdgeInsets.only(left: 5.0),),
                            Text("16:18",
                                style: TextStyle(fontFamily: openSans400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor))
                          ],)

                      ),

                    ],),


                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(15.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Row(children: [
            Image.asset("assets/photo.png"),
            SizedBox(
              width: 190,
              child: TextFormField(
                style: const TextStyle(fontSize: 20, fontFamily: openSans400, letterSpacing: customLetterSpacing, color: blackColor),
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
                  hintText: 'Сообщение...',
                  hintStyle: TextStyle(fontSize: 20, fontFamily: openSans400, letterSpacing: customLetterSpacing, color: greyColor),
                  contentPadding: EdgeInsets.only(left: 15.0),
                ),
              ),
            ),

          ],),),
          SizedBox(width: 24, height: 24, child: FittedBox(fit: BoxFit.cover, child:Image.asset("assets/send.png"),),)


        ],),

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
      ),

      bottomNavigationBar: const MainMenu(),

    );
  }
}
