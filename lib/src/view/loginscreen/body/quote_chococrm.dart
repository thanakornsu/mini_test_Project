import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class QuoteChocoCRM extends StatelessWidget {
  const QuoteChocoCRM({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: heightResponsive(14.61, context)),
      child: Text(
        'We Make Loyalty Happen',
        style: TextStyle(
          fontSize: heightResponsive(24, context),
        ),
      ),
    );
  }
}
