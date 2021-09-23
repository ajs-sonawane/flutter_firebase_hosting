import 'package:flutter/material.dart';
import 'package:flutter_firebase_hosting/utils/colors.dart';

class GIFRendererWidget extends StatelessWidget {
  const GIFRendererWidget({Key? key, this.size}) : super(key: key);
  final double? size;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(22.0),
      height: size,
      decoration: BoxDecoration(
        // gradient: RadialGradient(
        //   // radius: size.height * 0.001,
        //   // focalRadius: 2,
        //   colors: [Colors.white, Colors.transparent],
        //   radius: 20
        // ),
        borderRadius: BorderRadius.circular(66.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            spreadRadius: 1.0,
            blurRadius: 4.0
          )
        ]
      ),
      child: Image.asset(
        "assets/gifs/logo.gif",
        // fit: BoxFit.cover,
      ),
    );
  }

  Widget _circleDesign({double? height}) {
    return Container(
      height: height,
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
    );
  }
}
