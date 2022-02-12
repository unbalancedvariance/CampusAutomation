import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';


class SignUpPage extends StatelessWidget {
  @override
  static String tag = 'form';
  SignUpPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {

    return Scaffold(
      body:MyCardWidget(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text('Room Service'),
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: true,
      ),
      backgroundColor: Color(0xFFF3F3FE),
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
            shape: RoundedRectangleBorder(
            //  borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0xFFFFFFFF),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 ListTile(
                   contentPadding: EdgeInsets.fromLTRB(15,22,0,22),
                   title: Text(
                      'Service Request Form',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0)
                  ),
                ),
                Divider(
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
                        alignment: Alignment(0,0),
                        child:Text(
                            'Name:',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.9,0),
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
                          alignment: Alignment(-0.9,0),
                          child:Text(
                              'Room Number: ',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.9,0),
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
                          alignment: Alignment(-0.8,0),
                          child:Text(
                              "Date: ${pickeddate.year}:0${pickeddate.month}:${pickeddate.day} ",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.8,0),
                          child:Icon(
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
                          alignment: Alignment(-0.8,0),
                          child:Text(
                              "Time: ${pickeddate.hour}:0${pickeddate.minute}",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.black.withOpacity(0.8))
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.8,0),
                          child:Icon(
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
                          alignment: Alignment(-0.8,0),
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
            alignment: Alignment(0,0.5),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Send Request', style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF18BD5B)),
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
