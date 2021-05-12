
import 'package:fd23/constants.dart';
import 'package:flutter/material.dart';
import 'package:fd23/models/iconCard.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(

      child: Column(
        children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 35, bottom: 20),
                      child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.arrow_back_ios,
                      color: kPrimary,
                      size: 30),
                      ),
                    ),
                    // Spacer(),
                    IconCard(iconV:"images/icon1.svg"),
                    IconCard(iconV:"images/icon2.svg"),
                    IconCard(iconV:"images/icon3.svg"),
                    IconCard(iconV:"images/icon4.svg"),      
                  ],
            ),
              ),
              ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimary.withOpacity(0.5)
                  )
                ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('images/plant.png'),),),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 30 ),
          child: Row(
            children: [
              RichText(
                text:TextSpan(
                  children:[
                    TextSpan(
                      text: 'Angelica',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                        color: kPrimary,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                   ),
              ),
              Spacer(),
              Text('\$69',
              style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimary),
              )
            ]
          ),
        ),
        SizedBox(height: 35),
        Center(
            child: SizedBox(
              width: size.width/3,
              height: 45,
              child: FlatButton(
                color: kPrimary,
                onPressed: () {},
                child: Text('Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                  Radius.circular(20),
                  ),
                  ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
