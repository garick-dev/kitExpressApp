import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

/////////////////////////PAGES//////////////////////
import 'package:testproject/pages/reviews.dart';


class ReviewsBlockForAdd extends StatelessWidget {
  const ReviewsBlockForAdd({Key? key}) : super(key: key);


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
        padding: const EdgeInsets.symmetric(
            vertical: 20.0, horizontal: 15.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width:
                    MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.all(0.0),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Отзывы",
                                  style: TextStyle(
                                      fontFamily: montserrat500,
                                      letterSpacing:
                                      customLetterSpacing,
                                      fontSize: 18,
                                      color: blackColor),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 15.0),
                                ),
                                Text(
                                  "140",
                                  style: TextStyle(
                                      fontFamily: montserrat500,
                                      letterSpacing:
                                      customLetterSpacing,
                                      fontSize: 18,
                                      color: greyColor),
                                ),
                              ],
                            ),
                            const Icon(
                              CustomIcon.arrow_right,
                              color: greyColor,
                            ),
                          ],
                        ))),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 4,
                  decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius:
                      BorderRadius.all(Radius.circular(3))),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0),),
            Row(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: yellowColor,

                        ),
                        onPressed: (){},
                        child: const Text("Написать отзыв",
                          style: TextStyle(fontFamily: openSans700, fontSize: 20, letterSpacing: customLetterSpacing),))
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0),),
            Row(
              children: [
                Image.asset("assets/stars.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                const Text("3,5/5",
                    style: TextStyle(
                        fontFamily: montserrat500,
                        fontSize: 18,
                        letterSpacing: customLetterSpacing,
                        color: blackColor))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40.0),),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      const Text("Фотографии пользователей",
                          style: TextStyle(
                              fontFamily: montserrat500,
                              letterSpacing: customLetterSpacing,
                              fontSize: 18,
                              color: blackColor)),
                      const Padding(
                          padding: EdgeInsets.only(top: 5.0)),
                      Container(
                        height: 4,
                        decoration: const BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(3))),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/firewood.png",
                    width: 70, height: 65),
                Image.asset("assets/firewood.png",
                    width: 70, height: 65),
                Image.asset("assets/firewood.png",
                    width: 70, height: 65),
                Stack(
                  children: [
                    Image.asset("assets/wood.png",
                        width: 70, height: 65),
                    const Positioned(
                        left: 15,
                        top: 20,
                        child: Text("+20",
                            style: TextStyle(
                                fontFamily: montserrat500,
                                letterSpacing:
                                customLetterSpacing,
                                fontSize: 18,
                                color: blackColor)))
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 25.0),),
            Row(
              children: [
                Image.asset(
                  "assets/stars.png",
                  width: 70,
                  height: 15,
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 5.0)),
                const Text("2 октября 2021",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: montserrat500,
                        letterSpacing: customLetterSpacing,
                        color: greyColor))
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/user-avatar.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                ),
                const Text(
                  "Орехов М.",
                  style: TextStyle(
                      fontFamily: montserrat600,
                      fontSize: 14,
                      letterSpacing: customLetterSpacing,
                      color: blackColor),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Достоинства:",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: montserrat600,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text(
                        "Отличное качество, быстрая доставка",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: montserrat500,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      Text(
                        "Недостатки:",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: montserrat600,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text(
                        "Нет",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: montserrat500,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      Text(
                        "Комментарии:",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: montserrat600,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      Text(
                        "Все подошло, буду заказывать еще",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: montserrat500,
                            letterSpacing: customLetterSpacing,
                            color: blackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/firewood.png",
                        width: 115,
                        height: 110,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Column(
                        children: [
                          Image.asset("assets/firewood.png",
                              width: 55, height: 50),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Image.asset("assets/firewood.png",
                              width: 55, height: 50),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0),),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width:
                      MediaQuery.of(context).size.width * 0.8,
                      height: 1,
                      color: greyColor,
                    ),
                    Container(
                      width:
                      MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              primary: Colors.white,
                              shadowColor: Colors.transparent),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reviews()));
                          },
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Посмотреть все отзывы",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: montserrat400,
                                      color: blackColor,
                                      letterSpacing:
                                      customLetterSpacing)),
                              Icon(CustomIcon.arrow_right,
                                  color: greyColor),
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
