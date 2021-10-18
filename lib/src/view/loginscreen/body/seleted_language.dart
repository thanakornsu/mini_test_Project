import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class SeletedLanguage extends StatelessWidget {
  const SeletedLanguage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFAF9F8),
            borderRadius: BorderRadius.circular(13.5)),
        child: Padding(
          padding: const EdgeInsets.all(3.70),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: 1 == 0 ? Color(0xffC6B198) : Color(0xffFAF9F8),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13.5),
                          bottomLeft: Radius.circular(13.5))),
                  height: heightResponsive(22.5, context),
                  width: widthResponsive(33.55, context),
                  child: Center(
                    child: Text(
                      "TH",
                      style: TextStyle(
                          height: 1.15,
                          fontSize: heightResponsive(18, context),
                          color:
                              0 == 1 ? Color(0xff989898) : Color(0xff534741)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 3.7,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: 0 == 1 ? Color(0xffC6B198) : Color(0xffFAF9F8),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(13.5),
                          bottomRight: Radius.circular(13.5))),
                  height: heightResponsive(22.5, context),
                  width: widthResponsive(33.55, context),
                  child: Center(
                    child: Text(
                      "EN",
                      style: TextStyle(
                          height: 1.15,
                          fontSize: heightResponsive(18, context),
                          color:
                              1 == 0 ? Color(0xff989898) : Color(0xff534741)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
