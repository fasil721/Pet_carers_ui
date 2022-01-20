import 'package:flutter/material.dart';

class HOmePage extends StatelessWidget {
  const HOmePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    return Column(
      children: [Expanded(child: Image.asset("assets/ONBOARDING PICTURE.png"))],
    );
  }
}
