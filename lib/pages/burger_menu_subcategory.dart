import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';


/////////////////////////COMPONENTS//////////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';




class BurgerMenuSubcategory extends StatelessWidget {
  const BurgerMenuSubcategory({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const BurgerMenuSubcategoryState(),
    );
  }
}

class BurgerMenuSubcategoryState extends StatefulWidget {
  const BurgerMenuSubcategoryState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _BurgerMenuSubcategoryState();

}

class _BurgerMenuSubcategoryState extends State<BurgerMenuSubcategoryState>  with SingleTickerProviderStateMixin{


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
      appBar:

      AppBar(
        toolbarHeight: 90,
        title:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Строительные магазины",
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
                children: [
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Стройматериалы",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Электрика",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Инженерные системы",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Сантехника",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Крепежные товары",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Интерьер и отделка",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Мебель",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Экстерьер",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Кровля",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Благоустройство",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Инструменты",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),
                  /////////////////////////Строка элемента//////////////////////
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Инертные материалы",
                                maxLines: 5,
                                style: TextStyle(fontFamily: montserrat500, fontSize: 20, letterSpacing: customLetterSpacing, color: blackColor),),

                            ),

                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                iconSize: 16,
                                onPressed: () {},
                                icon: const Icon(CustomIcon.arrow_right, size: 16,))
                          ],),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      )

                      // Container()
                    ],),


                ],
              ),

            ],),
        ),
      ),



      bottomNavigationBar: MainMenu(),

    );


  }
}

