import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class LogoChocoCRM extends StatelessWidget {
  const LogoChocoCRM({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightResponsive(53.98, context),
      child: Image.asset(
        "assets/icon/ic_logo_crm.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
