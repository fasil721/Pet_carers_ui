import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    return Stack(
      children: [
        SizedBox(
          height: height * .8,
          child: Image.asset(
            "assets/ONBOARDING PICTURE.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
