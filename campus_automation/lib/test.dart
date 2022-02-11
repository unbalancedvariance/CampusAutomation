import 'package:flutter/material.dart';
import 'size_config.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SingleChildScrollView(
        child: Column(
          children:[
            Row(
              children :[
                Container(
                  width: SizeConfig.screenWidth*0.97,
                  height: SizeConfig.screenHeight*0.28,
                  decoration:  BoxDecoration(
                    color: Color(0xFF83D0E4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child :Align(
                    alignment: Alignment(0.92,-0.90),
                    child:CircleAvatar(
                      radius: 21.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/alucard.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children :[
                Container(
                  // Lower Widget Bar.
                  width: SizeConfig.screenWidth*0.97,
                  height: SizeConfig.screenHeight*0.72,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child :Column(
                    // This is the column of the pair of boxes in the lower widget bar.

                    children:[
                      // This group of children will consist of pair of widget rows.
                      Row(
                        children :[
                          Container(
                            margin: const EdgeInsets.fromLTRB(8,20,4,4),
                            // Box one
                            width: SizeConfig.screenWidth*0.45,
                            height: SizeConfig.screenHeight*0.28,
                            decoration:  BoxDecoration(
                              color: Color(0xFFC5EBF4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            // Box two
                            margin: const EdgeInsets.fromLTRB(8,20,4,4),
                            width: SizeConfig.screenWidth*0.45,
                            height: SizeConfig.screenHeight*0.28,
                            decoration:  BoxDecoration(
                              color: Color(0xFFC5EBF4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children :[
                          Container(
                            margin: const EdgeInsets.fromLTRB(8,16,4,8),
                            // Box one
                            width: SizeConfig.screenWidth*0.45,
                            height: SizeConfig.screenHeight*0.28,
                            decoration:  BoxDecoration(
                              color: Color(0xFFC5EBF4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            // Box two
                            margin: const EdgeInsets.fromLTRB(8,16,4,8),
                            width: SizeConfig.screenWidth*0.45,
                            height: SizeConfig.screenHeight*0.28,
                            decoration:  BoxDecoration(
                              color: Color(0xFFC5EBF4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),



              ], // children of the lower widget box
            ),
          ],
        ),
      ),
    );
  }
}

