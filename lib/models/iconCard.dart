import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fd23/constants.dart';

class IconCard extends StatelessWidget {
  final String iconV;

  IconCard({this.iconV});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kPadding / 2),
      height: 65,
      width: 65,
      child: SvgPicture.asset(iconV),
      decoration: BoxDecoration(
        color: kBg,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimary.withOpacity(0.3),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
