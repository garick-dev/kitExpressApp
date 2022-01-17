import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testproject/custom_icons.dart';


//////////////////////COMPONENTS///////////////////

import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/menu.dart';

import 'package:testproject/component/local/createdTask/photo.dart';





class TaskExampleIndividual extends StatelessWidget {
  const TaskExampleIndividual({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const TaskExampleIndividualState(),
    );
  }
}

class TaskExampleIndividualState extends StatefulWidget {
  const TaskExampleIndividualState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _TaskExampleIndividualState();

}

class _TaskExampleIndividualState extends State<TaskExampleIndividualState>  with SingleTickerProviderStateMixin{


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
        toolbarHeight: 120,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Построить дом мечты",
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: customLetterSpacing,
                      fontFamily: openSans700,
                      overflow: TextOverflow.fade,
                    ),
                  ),),
                IconButton(
                    padding: const EdgeInsets.only(top: 10.0),
                    constraints: const BoxConstraints(),
                    onPressed: (){},
                    icon: const Icon(CustomIcon.burger, color: Colors.white, size: 18))


              ],),
          ],),
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
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10.0),),
                  /////////////////////////ПОПАП ЗАДАНИЕ СОЗДАНО//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Задание создано!",
                              style: TextStyle(fontSize: 16, fontFamily: montserrat400, color: blackColor, letterSpacing: customLetterSpacing),),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(CustomIcon.close, size: 10),),
                          ]
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
                              offset: Offset(0.0, 0.0)
                          )
                        ]
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  /////////////////////////ИНФО О СОЗДАННОМ ЗАДАНИИ//////////////////////
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /////////////////////////Статус//////////////////////
                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const[
                              Text("Статус:",
                              style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                              Padding(padding: EdgeInsets.only(top: 5.0),),
                              Text("Поиск исполнителя",
                              style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.red)),
                          ],),
                            const Padding(padding: EdgeInsets.only(top: 20.0),),
                          /////////////////////////Категория//////////////////////
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("Категория:",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                              Padding(padding: EdgeInsets.only(top: 5.0),),
                              Text("Дизайн",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                            ],),
                            const Padding(padding: EdgeInsets.only(top: 20.0),),
                          /////////////////////////Город//////////////////////
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const[
                                Text("Город:",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Text("Москва",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                              ],),
                            const Padding(padding: EdgeInsets.only(top: 20.0),),
                          /////////////////////////Описание//////////////////////
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const[
                                Text("Описание:",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing, color: greyColor),),
                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Text("Хочу найти дизайнера-проектировщика, который может в архикад, а так же поможет спроектировать дом моей мечты ",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                              ],),
                            const Padding(padding: EdgeInsets.only(top: 20.0),),
                          /////////////////////////Инфо о прикрепленных фото//////////////////////
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              const Text("Вы прикрепили 8 фото",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing)),
                              const Padding(padding: EdgeInsets.only(top: 5.0),),
                              Row(children: const [
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),

                              ],),
                              const Padding(padding: EdgeInsets.only(top: 5.0),),
                              Row(children: const [
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),
                                Padding(padding: EdgeInsets.only(left: 8.0),),
                                CreatedTaskPhoto(),

                              ],),
                            ],),
                           const Padding(padding: EdgeInsets.only(top: 20.0),),
                          /////////////////////////Кнопки//////////////////////
                          Column(children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: yellowColor,

                                ),
                                onPressed: (){},
                                child: const Text("Отклики",
                                  style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing),))
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5.0),),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                    onPressed: (){},
                                    child: const Text("Поиск исполнителей",
                                      style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: orangeColor),))
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5.0),),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFEB5757),
                                    ),
                                    onPressed: (){},
                                    child: const Text("Отменить задание",
                                      style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing, color: Colors.white),))
                            ),

                          ],),
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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 120.0),),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const MainMenu(),

    );


  }
}

