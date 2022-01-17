import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';


/////////////////////////COMPONENTS//////////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';

import 'package:testproject/component/local/add_review/review_single_product_card.dart';




class NewReview extends StatelessWidget {
  const NewReview({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const NewReviewState(),
    );
  }
}

class NewReviewState extends StatefulWidget {
  const NewReviewState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _NewReviewState();

}

class _NewReviewState extends State<NewReviewState>  with SingleTickerProviderStateMixin{


  /////////////////////////GLOBAL//////////////////////

  //fonts
  static const montserrat400 = "Montserrat400";
  static const montserrat500 = "Montserrat500";
  static const montserrat600 = "Montserrat600";
  static const openSans400 = "OpenSans400";
  static const openSans600 = "OpenSans600";
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
      appBar:

      AppBar(
        title:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Новый отзыв",
                softWrap: true,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: customLetterSpacing,
                  fontFamily: openSans700,
                  overflow: TextOverflow.fade,
                ),
              ),),

          ],),
        actions: [
          IconButton(
              iconSize: 24,
              constraints: const BoxConstraints(),
              onPressed: (){}, icon: const Icon(Icons.close, size: 24,)),
        ],
        flexibleSpace: const GradientAppBar(),

      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children:  [
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  /////////////////////////КАРТОЧКА ТОВАРА//////////////////////
                  const ReviewSingleProductCard(),
                  /////////////////////////РЕЙТИНГ//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  SizedBox(width: 140, height: 28, child: FittedBox(fit: BoxFit.cover, child: Image.asset("assets/empty-stars.png"),),),
                  const Padding(padding: EdgeInsets.only(top: 15.0),),
                  /////////////////////////ДОСТОИНСТВА//////////////////////
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Достоинства:",
                          style: TextStyle(fontFamily: openSans700, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        Container(
                          child:  TextFormField(
                            style: const TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),
                            decoration: const InputDecoration(
                              fillColor: Colors.green,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent
                                  )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              isDense: true,
                              hintText: "Опишите плюсы товара",
                              hintStyle: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: greyColor),
                              contentPadding: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
                            ),
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                )
                              ]
                          ),
                        )

                      ],),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 35.0),),
                  /////////////////////////НЕДОСТАТКИ//////////////////////
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Недостатки: ",
                          style: TextStyle(fontFamily: openSans700, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        Container(
                          child:  TextFormField(
                            style: const TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),
                            decoration: const InputDecoration(
                              fillColor: Colors.green,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent
                                  )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              isDense: true,
                              hintText: "Опишите минусы товара",
                              hintStyle: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: greyColor),
                              contentPadding: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
                            ),
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                )
                              ]
                          ),
                        )

                      ],),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 35.0),),
                  /////////////////////////КОММЕНТАРИЙ//////////////////////
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Комментарий:",
                          style: TextStyle(fontFamily: openSans700, fontSize: 16, letterSpacing: customLetterSpacing, color: blackColor),),
                        const Padding(padding: EdgeInsets.only(top: 5.0),),
                        Container(
                          height: 90,
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child:  TextFormField(
                            style: const TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: blackColor),
                            minLines: null,
                            maxLines: null,
                            decoration: const InputDecoration(
                              fillColor: Colors.green,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent
                                  )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              isDense: true,
                              hintText: "При желании - добавьте свой комментарий по поводу данного товара",
                              hintMaxLines: 5,
                              hintStyle: TextStyle(fontFamily: montserrat400, fontSize: 14, letterSpacing: customLetterSpacing, color: greyColor),
                              contentPadding: EdgeInsets.only(left: 10.0),
                            ),
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                )
                              ]
                          ),
                        )

                      ],),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 25.0),),
                  /////////////////////////ПРИКРЕПИТЬ ФОТО//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Colors.white,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Прикрепить фото",
                            style: TextStyle(fontFamily: openSans600, fontSize: 16, color: orangeColor, letterSpacing: customLetterSpacing),),
                          Image.asset("assets/photo.png"),

                        ],),),


                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        boxShadow: [
                          BoxShadow(
                            color: greyColor,
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ]
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30.0),),
                  /////////////////////////ОПУБЛИКОВАТЬ ОТЗЫВ//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: greyColor,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){},
                      child:
                      const Text("Опубликовать отзыв",
                        style: TextStyle(fontFamily: openSans700, fontSize: 19, letterSpacing: customLetterSpacing),),


                    ),


                    decoration: const BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        boxShadow: [
                          BoxShadow(
                            color: greyColor,
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ]
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30.0),),

                ],
              ),

            ],),
        ),
      ),



      bottomNavigationBar: MainMenu(),

    );


  }
}

