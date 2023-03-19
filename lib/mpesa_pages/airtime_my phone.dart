import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sim_toolkit/widgets/text.dart';

import 'airtime_otherphone.dart';


class AirtimeMyPhone extends StatelessWidget {
  const AirtimeMyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only( top: 20),
          child: Text(
            'Buy Airtime',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        toolbarHeight: 70.0,
        backgroundColor: Colors.black.withOpacity(0.9),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // grey border
            Container(
              height: 0.5,
              color: Colors.black,
            ),
            SizedBox(height: 7),
            // Safaricom
            GestureDetector(
              onTap: (){
                Get.to(()=>MyTextFieldScreen(text: "Enter Amount", keyboardType: KeyboardType.numeric));
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
                child: Text(
                  "My Phone",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            // mpesa
            GestureDetector(
              onTap: (){
                Get.to(()=>AirtimeOtherPhone());
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
                child: Text(
                  "Other Phone",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
