import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/custom_icons.dart';
import 'package:testproject/main.dart';


class FullCartActive extends StatelessWidget {
  const FullCartActive({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const FullCartActiveState(),
    );
  }
}

class FullCartActiveState extends StatefulWidget {
  const FullCartActiveState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _FullCartActiveState();

}

class _FullCartActiveState extends State<FullCartActiveState>  with SingleTickerProviderStateMixin{

  int _selectedIndex = 0;


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

  void _onItemTapped (int index) {
    setState( () {
      _selectedIndex = index;
    });
  }

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
                "Корзина (3)",
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
        ],
        flexibleSpace: Container(

          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    orangeColor,
                    Color(0xFFFBC41E),
                  ])
          ),

        ),

      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        child: SingleChildScrollView(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50,
                    color: Colors.white,
                    child:
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Row(children: [
                            Image.asset("assets/checkbox-active.png"),
                            const Padding(padding: EdgeInsets.only(left: 7.0)),
                            const Text("Выбрать все",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),
                          ],),
                          Row(children: const[
                            Text("Удалить выбранные",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 16, letterSpacing: customLetterSpacing, color: Colors.red, decoration: TextDecoration.underline))
                          ],)
                        ],),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(3)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0,
                                3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                padding: const EdgeInsets.all(0.0),
                                primary: Colors.transparent,
                              ),
                              onPressed: () {

                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        CustomIcon.location,
                                        color: blackColor,
                                      ),
                                      Padding(
                                          padding:
                                          EdgeInsets.only(left: 8.0)),
                                      Text(
                                        "Москва",
                                        style: TextStyle(
                                            fontFamily: montserrat500,
                                            letterSpacing:
                                            customLetterSpacing,
                                            fontSize: 18,
                                            color: blackColor),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    CustomIcon.arrow_right,
                                    color: greyColor,
                                  ),
                                ],
                              )
                          )

                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        padding: const EdgeInsets.all(20.0),
                        height: 1,
                        color: Color(0xFFE0E0E0),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 25.0)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.93,
                    height: 130,
                    padding: EdgeInsets.all(10.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/checkbox-active.png")
                          ],),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        Stack(
                          children: [
                            SizedBox(
                              width: 105,
                              height: 110,
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset(
                                  "assets/plywood.png",
                                ),),
                            ),

                            Positioned(
                                bottom: 5.0,
                                left: 5.0,
                                child: Container(
                                  width: 37,
                                  height: 15,
                                  child: const Center(
                                    child: Text(
                                      "-35%",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontFamily:
                                        montserrat500,
                                        fontSize: 12,
                                        letterSpacing:
                                        customLetterSpacing,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          3),
                                      gradient:
                                      const LinearGradient(
                                          begin: Alignment
                                              .topLeft,
                                          end: Alignment
                                              .bottomRight,
                                          colors: <Color>[
                                            orangeColor,
                                            Color(0xFFFBC41E),
                                          ])),
                                )),
                            Positioned(
                                top: -10.0,
                                right: -5.0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CustomIcon.favorite,
                                      color: Colors.white,
                                      size: 16,
                                    ))),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        SizedBox(
                            width: 145,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "790р",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontFamily: montserrat600,
                                        fontSize: 14,
                                        letterSpacing:
                                        customLetterSpacing,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 6.0)),
                                    Text(
                                      "1000р",
                                      style: TextStyle(
                                        color: greyColor,
                                        fontFamily: montserrat600,
                                        fontSize: 14,
                                        letterSpacing:
                                        customLetterSpacing,
                                        decoration:
                                        TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: const [
                                    Expanded(
                                        child: Text(
                                          "Фанера ламинированная 21х1220х2440 мм",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontFamily: montserrat600,
                                            fontSize: 14,
                                            letterSpacing:
                                            customLetterSpacing,
                                          ),
                                        ))
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("−",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left:2.0),),
                                    SizedBox(
                                      width: 80,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("1",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left:2.0),),
                                    SizedBox(
                                      width: 30,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("+",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),


                                  ],)
                              ],)
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child:  ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    padding: const EdgeInsets.all(0.0),
                                  ),
                                  onPressed: (){}, child: const Icon(CustomIcon.close, size: 16, color: blackColor)),
                            ),


                          ],)


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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20.0),),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.93,
                    height: 130,
                    padding: EdgeInsets.all(10.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/checkbox-active.png")
                          ],),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        Stack(
                          children: [
                            SizedBox(
                              width: 105,
                              height: 110,
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset(
                                  "assets/tile.png",
                                ),),
                            ),

                            Positioned(
                                bottom: 5.0,
                                left: 5.0,
                                child: Container(
                                  width: 37,
                                  height: 15,
                                  child: const Center(
                                    child: Text(
                                      "-40%",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontFamily:
                                        montserrat500,
                                        fontSize: 12,
                                        letterSpacing:
                                        customLetterSpacing,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          3),
                                      gradient:
                                      const LinearGradient(
                                          begin: Alignment
                                              .topLeft,
                                          end: Alignment
                                              .bottomRight,
                                          colors: <Color>[
                                            orangeColor,
                                            Color(0xFFFBC41E),
                                          ])),
                                )),
                            Positioned(
                                top: -10.0,
                                right: -5.0,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CustomIcon.favorite,
                                      color: Colors.white,
                                      size: 16,
                                    ))),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        SizedBox(
                            width: 145,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "1200р",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontFamily: montserrat600,
                                        fontSize: 14,
                                        letterSpacing:
                                        customLetterSpacing,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                        EdgeInsets.only(left: 6.0)),
                                    Text(
                                      "3000р",
                                      style: TextStyle(
                                        color: greyColor,
                                        fontFamily: montserrat600,
                                        fontSize: 14,
                                        letterSpacing:
                                        customLetterSpacing,
                                        decoration:
                                        TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(padding: EdgeInsets.only(top: 5.0)),
                                Row(
                                  children: const [
                                    Expanded(
                                        child: Text(
                                          "Черепица гибкая Shinglas 3 кв.м",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontFamily: montserrat600,
                                            fontSize: 14,
                                            letterSpacing:
                                            customLetterSpacing,
                                          ),
                                        ))
                                  ],
                                ),
                                const Padding(padding: EdgeInsets.only(top: 10.0)),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("−",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left:2.0),),
                                    SizedBox(
                                      width: 80,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("2",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left:2.0),),
                                    SizedBox(
                                      width: 30,
                                      height: 25,
                                      child:
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding:EdgeInsets.all(0.0),
                                            primary: orangeColor,
                                          ),
                                          onPressed: (){},
                                          child: const Text("+",
                                            style: TextStyle(fontFamily: openSans700, fontSize: 14, letterSpacing: customLetterSpacing, color: Colors.white),)),
                                    ),


                                  ],)
                              ],)
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child:  ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    padding: const EdgeInsets.all(0.0),
                                  ),
                                  onPressed: (){}, child: const Icon(CustomIcon.close, size: 16, color: blackColor)),
                            ),



                          ],)


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
                  ),
                  const Padding(padding: EdgeInsets.only(top: 25.0),),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.all(15.0),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Общая стоимость:",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

                            Text("4 000 Р",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor))
                          ],),
                        const Padding(padding: EdgeInsets.only(top: 15.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Скидка:",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

                            Text("-2 010 Р",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: Colors.red))
                          ],),
                        const Padding(padding: EdgeInsets.only(top: 15.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Итого:",
                              style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor),),

                            Text("1 990 Р",
                                style: TextStyle(fontFamily: montserrat500, fontSize: 18, letterSpacing: customLetterSpacing, color: blackColor))
                          ],),
                      ],
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0,
                              0), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 150.0),),
                ],
              ),

            ],),
        ),
      ),


      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: orangeColor,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("К оформлению",
                    style: TextStyle(
                        fontFamily: openSans700,
                        fontSize: 24,
                        letterSpacing: customLetterSpacing,
                        color: Colors.white)),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                ),
                Text("1990 Р",
                    style: TextStyle(
                        fontFamily: montserrat600,
                        fontSize: 24,
                        letterSpacing: customLetterSpacing,
                        color: Colors.white)),
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              CustomIcon.home_1,
              size: 28,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(CustomIcon.catalog, size: 28),
            label: 'Catalog',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CustomIcon.login, size: 28),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FullCartActive()),
                );
              },

              icon: Icon(CustomIcon.cart, size:  28,),),
            label: 'Cart',

          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: orangeColor,
        unselectedItemColor: Color(0xFFA5A5A5),
        onTap: _onItemTapped,
      ),

    );


  }
}

