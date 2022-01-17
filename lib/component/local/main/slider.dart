import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testproject/custom_icons.dart';

class SliderImageMain extends StatefulWidget {
  const SliderImageMain({Key? key}) : super(key: key);

  @override
  State<SliderImageMain> createState() => _SliderImageMainState();
}

class _SliderImageMainState extends State<SliderImageMain>  with SingleTickerProviderStateMixin{

  int activeBulletIndex = 0;
  ///////////////////////////////Картинки для слайдера/////////////////////////////////
  final urlImages = [
    "assets/slider-main.png",
    "assets/slider-main.png",
    "assets/slider-main.png",
    "assets/slider-main.png",
    "assets/slider-main.png",
    "assets/slider-main.png",
  ];

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

    ///////////////////////////////Виджет для слайдера/////////////////////////////////
    Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(3),
          ),
          child: FittedBox(fit: BoxFit.cover, child: Image.asset(urlImage),),
        ),
      ),
    );
///////////////////////////////Виджет для булетов/////////////////////////////////
    Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeBulletIndex,
      count: urlImages.length,
      effect: const SlideEffect(
        activeDotColor: orangeColor,
        dotColor: greyColor,
        dotWidth: 23,
        dotHeight: 4,
      ),
    );


    return SizedBox(
      child: Column(children: [
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 250,
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 250,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) => setState(
                                () => activeBulletIndex = index)),
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        ///////////////////////////////Булеты/////////////////////////////////
        buildIndicator(),
      ],),
    );

  }
}
