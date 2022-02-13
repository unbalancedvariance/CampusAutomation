import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';


class SignUpPage extends StatelessWidget {
  @override
  static String tag = 'oldform';
  SignUpPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {

    return Scaffold(
      body:MyCardWidget(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Text('Room Service'),
          backgroundColor: const Color(0xFFFFFFFF),
          centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF3F3FE),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime pickeddate = DateTime.now();
    return Center(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding: new EdgeInsets.fromLTRB(4,4,4,0),
          child: Card(
            shape: const RoundedRectangleBorder(
            //  borderRadius: BorderRadius.circular(15.0),
            ),
            color: const Color(0xFFFFFFFF),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 const ListTile(
                   contentPadding: const EdgeInsets.fromLTRB(15,22,0,22),
                   title: const Text(
                      'Service Request Form',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0)
                  ),
                ),
                const Divider(
                    color: Colors.black
                ),
                InkWell(
                  onTap:(){},
                  child:Container(
                  width:(SizeConfig.screenWidth - 30),
                  height:SizeConfig.screenHeight*0.10,
                  child: Row(
                    children: [
                      Align(
                        alignment: const Alignment(0,0),
                        child:Text(
                            'Name:',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-0.9,0),
                        child:Text(
                            ' Dhanvi Medha Beechu',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                        ),
                      ),
                    ],

                  ),

        ),
    ),
                InkWell(
                  onTap:(){},
                  child:Container(
                    width:(SizeConfig.screenWidth - 30),
                    height:SizeConfig.screenHeight*0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: const Alignment(-0.9,0),
                          child:Text(
                              'Room Number: ',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.9,0),
                          child:Text(
                              'R205',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                      ],

                    ),

                  ),
                ),

                // This is the date time picker part of the form
                InkWell(
                  onTap:(){},
                  child:Container(
                    width:(SizeConfig.screenWidth - 30),
                    height:SizeConfig.screenHeight*0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: const Alignment(-0.8,0),
                          child:Text(
                              "Date: ${pickeddate.year}:0${pickeddate.month}:${pickeddate.day} ",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        const Align(
                          alignment: const Alignment(-0.8,0),
                          child:const Icon(
                              Icons.calendar_today,
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  onTap:(){},
                  child:Container(
                    width:(SizeConfig.screenWidth - 30),
                    height:SizeConfig.screenHeight*0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: const Alignment(-0.8,0),
                          child:Text(
                              "Time: ${pickeddate.hour}:0${pickeddate.minute}",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        const Align(
                          alignment: const Alignment(-0.8,0),
                          child:const Icon(
                            Icons.lock_clock,
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
                InkWell(
                  onTap:(){},
                  child:Container(
                    width:(SizeConfig.screenWidth - 30),
                    height:SizeConfig.screenHeight*0.10,
                    child: Row(
                      children: [
                        Align(
                          alignment: const Alignment(-0.8,0),
                          child:Text(
                              'Clean without supervision: ',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          //   alignment: Alignment(-0.9,0),
                          child:Checkbox(
                            value: false,
                            onChanged:(bool? value){
                            },
                          ),
                        ),
                      ],

                    ),

                  ),
                ),
          InkWell(
            child:Container(
              width:(SizeConfig.screenWidth - 30),
              height:SizeConfig.screenHeight*0.10,
          child:Align(
            alignment: const Alignment(0,0.5),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Send Request', style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF18BD5B)),
              ),
            ),
          ),
            ),
          ),
    ],
            ),
          ),
        )
    );
  }
}
