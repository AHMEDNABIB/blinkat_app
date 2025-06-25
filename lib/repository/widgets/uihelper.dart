import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomImage(
      {required String img, double? width, double? height}) {
    return Image.asset(
      "assets/images/$img",
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }

  static CustomeTextField(
      {required TextEditingController controller, required String text}) {
    return Container(
      height: 37,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            prefixIcon: Image.asset(
              "assets/images/search.png",
            ),
            suffixIcon: Image.asset("assets/images/mic 1.png"),
            border: InputBorder.none),
      ),
    );
  }
}
