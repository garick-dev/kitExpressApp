import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testproject/custom_icons.dart';


class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> with SingleTickerProviderStateMixin{


  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

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


    return  Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [

          TabBar(
            indicatorColor: orangeColor,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            unselectedLabelColor: greyColor,
            labelColor: blackColor,
            labelPadding: const EdgeInsets.all(0.0),
            tabs: const [
              Tab(

                  child: Text(
                    "Доставка",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: openSans700,
                      letterSpacing: customLetterSpacing,
                    ),
                  )),
              Tab(
                  child: Text(
                    "Самовывоз",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: openSans700,
                      letterSpacing: customLetterSpacing,
                    ),
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: Center(
              child: [
                Column(
                  children: [
                    Column(children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              child: Column(children: const[
                                Text("9 окт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                                Padding(padding: EdgeInsets.only(top:5.0),),
                                Text("cб",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                              ],),
                              decoration: BoxDecoration(
                                border: Border.all(color: yellowColor, width: 2),
                                borderRadius: const BorderRadius.all(Radius.circular(3)),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 10.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              child: Column(children: const[
                                Text("10 окт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                                Padding(padding: EdgeInsets.only(top:5.0),),
                                Text("вс",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                              ],),
                              decoration: BoxDecoration(
                                border: Border.all(color: greyColor, width: 2),
                                borderRadius: const BorderRadius.all(Radius.circular(3)),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 10.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              child: Column(children: const[
                                Text("11 окт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                                Padding(padding: EdgeInsets.only(top:5.0),),
                                Text("пн",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                              ],),
                              decoration: BoxDecoration(
                                border: Border.all(color: greyColor, width: 2),
                                borderRadius: const BorderRadius.all(Radius.circular(3)),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 10.0)),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              child: Column(children: const[
                                Text("12 окт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                                Padding(padding: EdgeInsets.only(top:5.0),),
                                Text("вт",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                              ],),
                              decoration: BoxDecoration(
                                border: Border.all(color: greyColor, width: 2),
                                borderRadius: const BorderRadius.all(Radius.circular(3)),
                              ),
                            ),
                          ],),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 25.0),),
                      Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.78,
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                          color: const Color(0xFFF2F2F2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("10:00 - 14:00, бесплатно",
                                  style: TextStyle(fontSize: 16, fontFamily: montserrat400, color: blackColor, letterSpacing: customLetterSpacing)),
                              Image.asset("assets/arrows.png"),
                            ],),
                        )
                      ],)

                    ],)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text("Адрес:",
                            style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Text("г.Рязань, проспект Ленина 44к1, подъезд 2, офис 104:",
                            style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                      ],),
                    const Padding(padding: EdgeInsets.only(top: 10.0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Время работы склада:",
                            style: TextStyle(fontFamily: montserrat400, fontSize: 12, letterSpacing: customLetterSpacing, color: greyColor)),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Text("Пн-Пт 10:00 - 20:00",
                            style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                        Text("Сб-Вс 12:00 - 18:00",
                            style: TextStyle(fontFamily: montserrat400, fontSize: 16, letterSpacing: customLetterSpacing)),
                      ],),
                    const Padding(padding: EdgeInsets.only(top: 20.0)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            child: Column(children: const[
                              Text("9 окт",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                              Padding(padding: EdgeInsets.only(top:5.0),),
                              Text("cб",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                            ],),
                            decoration: BoxDecoration(
                              border: Border.all(color: yellowColor, width: 2),
                              borderRadius: const BorderRadius.all(Radius.circular(3)),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10.0)),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            child: Column(children: const[
                              Text("10 окт",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                              Padding(padding: EdgeInsets.only(top:5.0),),
                              Text("вс",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                            ],),
                            decoration: BoxDecoration(
                              border: Border.all(color: greyColor, width: 2),
                              borderRadius: const BorderRadius.all(Radius.circular(3)),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10.0)),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const[
                                Text("11 окт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                                Padding(padding: EdgeInsets.only(top:5.0),),
                                Text("пн",
                                    style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                              ],),
                            decoration: BoxDecoration(
                              border: Border.all(color: greyColor, width: 2),
                              borderRadius: const BorderRadius.all(Radius.circular(3)),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10.0)),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                            child: Column(children: const[
                              Text("12 окт",
                                style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: blackColor, letterSpacing: customLetterSpacing),),
                              Padding(padding: EdgeInsets.only(top:5.0),),
                              Text("вт",
                                  style: TextStyle(fontFamily: montserrat400, fontSize: 16, color: greyColor, letterSpacing: customLetterSpacing)),
                            ],),
                            decoration: BoxDecoration(
                              border: Border.all(color: greyColor, width: 2),
                              borderRadius: const BorderRadius.all(Radius.circular(3)),
                            ),
                          ),
                        ],),
                    ),

                  ],
                )
              ]
              [_tabController.index],
            )
          )

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
