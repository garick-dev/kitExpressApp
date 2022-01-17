import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';



//////////////////////COMPONENTS///////////////////
import 'package:testproject/component/local/transportation/open_order_transportation.dart';


import 'package:testproject/component/global/gradient_app_bar.dart';
import 'package:testproject/component/global/payment_success.dart';



class EnterCode extends StatelessWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFFF9F9F9)),
      home: const EnterCodeState(),
    );
  }
}

class EnterCodeState extends StatefulWidget {
  const EnterCodeState({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _EnterCodeState();

}

class _EnterCodeState extends State<EnterCodeState>  with SingleTickerProviderStateMixin{


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

  final TextEditingController _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // height: 150,
              child: Text(
                "Вход",
                softWrap: true,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: customLetterSpacing,
                  fontFamily: openSans700,
                  overflow: TextOverflow.fade,
                ),
              ),),

          ],),
        flexibleSpace: const GradientAppBar(),
      ),
      body: Center(
        child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /////////////////////ВВОД КОДА/////////////////////
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      controller: _textController,
                      onChanged: (text) {
                        if(_textController.text.length == 6) {
                          print("Changed");
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(6),
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      style: const TextStyle(fontSize: 24, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: blackColor),
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'Код подтверждения',
                        hintStyle: TextStyle(fontSize: 24, fontFamily: montserrat400, letterSpacing: customLetterSpacing, color: greyColor),
                      ),
                    ),),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: orangeColor,
                        borderRadius:
                        BorderRadius.all(Radius.circular(3))),
                  ),
                ],),
              /////////////////////КНОПКА/////////////////////
              const Padding(padding: EdgeInsets.only(top: 70.0)),
              SizedBox(
                        width: 290,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: orangeColor,
                          ),
                          onPressed: (){},child: const Text("Войти",
                          style: TextStyle(fontFamily: openSans700, fontSize: 20, color: Colors.white, letterSpacing: customLetterSpacing),),
                        ),

                    ),
              const Padding(padding: EdgeInsets.only(top: 50.0)),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                child: const Text("Отправить код повторно",
                style: TextStyle(fontFamily: openSans400, fontSize: 20, letterSpacing: customLetterSpacing, color: orangeColor, decoration: TextDecoration.underline, decorationThickness: 2,),),)


            ],
          ),

        ),
       ),
      ),

    );


  }
}

