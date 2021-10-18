import 'package:flutter/material.dart';
import 'package:qrcan/responsive.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.color,
  }) : super(key: key);
  final String text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(1),
                blurRadius: 3,
                offset: Offset(0.0, 4) // changes position of shadow
                ),
          ],
          color: Color(0xffFFDF5F),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: heightResponsive(31.19, context)),
        height: heightResponsive(40, context),
        width: widthResponsive(269, context),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            primary: Colors.white,
            backgroundColor: color,
          ),
          onPressed: press as void Function(),
          child: Text(
            text,
            style: TextStyle(
              height: 1,
              color: Colors.black,
              fontSize: heightResponsive(18, context),
            ),
          ),
        ),
      ),
    );
  }
}
