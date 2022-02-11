import 'package:flutter/material.dart';
import 'size_config.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF83D0E4),
        body:SingleChildScrollView(
          child: Column(
            children:[
              Row(
                children :[
                  Flexible(
                  child :Container(
                    //Upper widget bar
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight*0.33,
                    decoration:  BoxDecoration(
                      color: Color(0xFF83D0E4),
                     // borderRadius: BorderRadius.circular(12),
                    ),
                    child :Align(
                      alignment: Alignment(0.92,-0.6),
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
                  ),
                ],
              ),
              Row(
                children :[
                  Flexible(
                  child:Container(
                    // Lower Widget Bar.
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight*0.72,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                              width: SizeConfig.screenWidth*0.46,
                              height: SizeConfig.screenHeight*0.28,
                              decoration:  BoxDecoration(
                                color: Color(0xFF424757),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              // Box two
                              margin: const EdgeInsets.fromLTRB(4,20,4,4),
                              width: SizeConfig.screenWidth*0.46,
                              height: SizeConfig.screenHeight*0.28,
                              decoration:  BoxDecoration(
                                color: Color(0xFF424757),
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
                              width: SizeConfig.screenWidth*0.46,
                              height: SizeConfig.screenHeight*0.28,
                              decoration:  BoxDecoration(
                                color: Color(0xFF424757),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              // Box two
                              margin: const EdgeInsets.fromLTRB(4,16,4,8),
                              width: SizeConfig.screenWidth*0.46,
                              height: SizeConfig.screenHeight*0.28,
                              decoration:  BoxDecoration(
                                color: Color(0xFF424757),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),



                ], // children of the lower widget box
              ),
            ],
          ),
        )
    );
  }
}

