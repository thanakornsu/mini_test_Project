import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: widthResponsive(374, context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/img_background_02.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
