import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  @override
  static String tag = 'form';
  const SignUpPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {

    return Scaffold(
      body:MyCardWidget(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text('Service Request'),
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
                )
              ],
            ),
          ),
        )
    );
  }
}
