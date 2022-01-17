import 'package:flutter/material.dart';
import 'package:testproject/custom_icons.dart';

class CreatedTaskPhoto extends StatefulWidget {
  const CreatedTaskPhoto({Key? key}) : super(key: key);

  @override
  State<CreatedTaskPhoto> createState() => _CreatedTaskPhotoState();
}

class _CreatedTaskPhotoState extends State<CreatedTaskPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Stack(children: [
        FittedBox(
          child: Image.asset("assets/house.png"),
        ),
        Positioned(
          right: 5.0,
          top: 5.0,
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            iconSize: 6,
            onPressed: (){},
            icon: const Icon(CustomIcon.close, size: 6, color: Colors.red),),),
      ],),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
    );
  }
}
