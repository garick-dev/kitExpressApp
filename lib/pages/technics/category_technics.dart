import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';


/////////////////////////COMPONENTS//////////////////////
import 'package:testproject/component/global/menu.dart';
import 'package:testproject/component/global/gradient_app_bar.dart';




class CategoryTechnics extends StatelessWidget {
  const CategoryTechnics({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const CategoryTechnicsState(),
    );
  }
}

class CategoryTechnicsState extends StatefulWidget {
  const CategoryTechnicsState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CategoryTechnicsState();

}

class _CategoryTechnicsState extends State<CategoryTechnicsState>  with SingleTickerProviderStateMixin{


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
                "Строительная техника в аренду",
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
                              child: Text("Автокраны",
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
                              child: Text("Гидромолоты",
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
                              child: Text("Гусеничные экскаваторы",
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
                              child: Text("Колесные экскаваторы",
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
                              child: Text("Экскаваторы-погрузчики",
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
                              child: Text("Экскаваторы-разрушители",
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
                              child: Text("Мини-экскаваторы",
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
                              child: Text("Илососы",
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
                              child: Text("Минипогрузчики",
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
                              child: Text("Лесовозы",
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
                              child: Text("Бульдозеры",
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
                              child: Text("Мусоровозы",
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
                              child: Text("Автовышки",
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
                              child: Text("Панелевозы",
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
                              child: Text("Манипуляторы",
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
                              child: Text("Самосвалы",
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
                              child: Text("Плавающие экскаваторы",
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
                              child: Text("Автобетоносмесители",
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
                              child: Text("Поливомоечные машины",
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
                              child: Text("Автобетононасосы",
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
                              child: Text("Телескопические погрузчики",
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
                              child: Text("Катки",
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
                              child: Text("Вибропогружатели",
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
                              child: Text("Подъемники",
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
                              child: Text("Вилочные погрузчики",
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
                              child: Text("Ямобуры",
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
                              child: Text("Компрессоры",
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
                              child: Text("Башенные краны",
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
                              child: Text("Тралы",
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
                              child: Text("Длинномеры",
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
                              child: Text("Фронтальные погрузчики",
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
                              child: Text("Экскаваторы-планировщики",
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
                              child: Text("Низкорамные платформы",
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
                              child: Text("Гусеничные краны",
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
                              child: Text("Траншеекопатели",
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
                              child: Text("Автогрейдеры",
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
                              child: Text("Грейферы",
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
                              child: Text("Тонары",
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
                              child: Text("Дорожная фреза",
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
                              child: Text("Асфальтоукладчики",
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
                              child: Text("Трубоукладчики",
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

