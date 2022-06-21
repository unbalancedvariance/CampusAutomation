import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';
import 'home_page.dart';


class Fooditem extends StatefulWidget {
  static String tag = 'fooditems';
  @override
  _Fooditemstage createState() => _Fooditemstage();
}


class _Fooditemstage extends State<Fooditem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset('assets/logo2.jpeg'),
            //fit: BoxFit.fitHeight,

          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Text("Fries",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                        )
                      ]
                    )
                  ],
                ),

              ))
        ],
      ),
    );
  }
}