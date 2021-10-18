import 'package:flutter/cupertino.dart';

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double widthResponsive(double width, BuildContext context) {
  // return width;
  return screenWidth(context) * width / 375;
}

double heightResponsive(double height, BuildContext context) {
  // return height;
  return screenHeight(context) * height / 812;
}
