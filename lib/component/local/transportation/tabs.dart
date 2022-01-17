import 'package:flutter/material.dart';


class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin{

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

  @override
  Widget build(BuildContext context) {

    return  Container(
        padding: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width * 0.90,
        child: Column(
          children: [
            TabBar(
              indicatorColor: orangeColor,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              unselectedLabelColor: greyColor,
              labelColor: blackColor,
              tabs: const [
                Tab(
                    child: Text(
                      "Описание",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                      ),
                    )),
                Tab(
                    child: Text(
                      "Параметры",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                      ),
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Center(
                child: [
                  Column(
                    children: const [
                      Text( "Перевозим грузы любого веса и ценности. С машиной предоставляются два грузчика. ",
                        style: TextStyle(
                            fontFamily: montserrat400,
                            fontSize: 16,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text( "Перевозим грузы любого веса и ценности. С машиной предоставляются два грузчика.Перевозим грузы любого веса и ценности. С машиной предоставляются два грузчика. ",
                        style: TextStyle(
                            fontFamily: montserrat400,
                            fontSize: 16,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20.0)),
                    ],
                  )
                ]
                [_tabController.index],
              ),

          ],
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
