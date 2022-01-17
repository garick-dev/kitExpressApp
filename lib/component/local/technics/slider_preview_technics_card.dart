import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testproject/custom_icons.dart';

class SliderImagePreviewTechnicsCard extends StatefulWidget {
  const SliderImagePreviewTechnicsCard({Key? key}) : super(key: key);

  @override
  State<SliderImagePreviewTechnicsCard> createState() => _SliderImagePreviewTechnicsCardState();
}

class _SliderImagePreviewTechnicsCardState extends State<SliderImagePreviewTechnicsCard>  with SingleTickerProviderStateMixin{

  int activeBulletIndex = 0;
  ///////////////////////////////Картинки для слайдера/////////////////////////////////
  final urlImages = [
    "assets/technics.png",
    "assets/technics.png",
    "assets/technics.png",
    "assets/technics.png",
    "assets/technics.png",
    "assets/technics.png",
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
      color: Colors.grey,
      child: SizedBox(
        width: 135,
        height: 160,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(3)),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(urlImage),
          ),
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
        dotWidth: 6,
        dotHeight: 2,
        spacing: 3,
      ),
    );


    return Container(
      child: Column(children: [
        Stack(
          children: [
            SizedBox(
              width: 135,
              height: 170,
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 170,
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
            Positioned(
                top: 1.0,
                right: 0.0,
                child: IconButton(
                    iconSize: 16,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      CustomIcon.favorite,
                      color: Colors.white,
                      size: 16,
                    ))),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 5.0),
        ),
        ///////////////////////////////Булеты/////////////////////////////////
        buildIndicator(),
      ],),
    );

  }
}
