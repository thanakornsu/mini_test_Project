import 'package:flutter/material.dart';
import 'package:qrcan/src/view/loginscreen/body/background.dart';
import 'package:qrcan/src/view/loginscreen/body/quote_chococrm.dart';
import 'package:qrcan/src/view/loginscreen/body/seleted_language.dart';

import '../../../../responsive.dart';
import 'login_form.dart';
import 'logo_chococrm.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Stack(
        children: [
          Background(),
          Padding(
            padding: EdgeInsets.only(
              left: widthResponsive(34.4, context),
              right: widthResponsive(34.4, context),
              top: heightResponsive(103.88, context),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoChocoCRM(),
                SizedBox.shrink(),
                QuoteChocoCRM(),
                FormLogin(),
                SeletedLanguage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
