import 'package:campus_automation/size_config.dart';
import 'package:flutter/material.dart';

class Building extends StatelessWidget {

  static String tag = 'building';
  const Building({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Under Construction'),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
      ),
      backgroundColor:  Color(0xFF83D0E4),
      body: Center(
        child: Column(
          children: <Widget>[
        Flexible(
          child:Align(
            alignment:Alignment.center,
        child: Container(
          //Upper widget bar
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight * 0.33,
          decoration: const BoxDecoration(
            color: Color(0xFF83D0E4),
            image: DecorationImage(
              image: AssetImage('assets/stillbuilding.png'),
              fit: BoxFit.fitWidth,
              // borderRadius: BorderRadius.circular(12),
            ),
          ),

        ),
          ),
        ),
          ],
        ),
      ),
    );
  }

}

