import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sim_toolkit/mpesa_pages/paybill.dart';

import '../widgets/text.dart';


class LipaMpesa extends StatelessWidget {
  const LipaMpesa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only( top: 20),
          child: Text(
            'Lipa na Mpesa',
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
            // paybill
              GestureDetector(
                onTap: (){
                  Get.to(()=>PayBill());
                },
                child: Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
                  child: Text(
                    "Pay Bill",
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
            SizedBox(height: 7),
            // buy goods
            GestureDetector(
              onTap: (){
                Get.to(()=>MyTextFieldScreen(text: 'Enter till no', keyboardType: KeyboardType.alphabetic,));
              },
              child: Container(
                color: Colors.black.withOpacity(0),
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Buy Goods and Services",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            //Pochi la biashara
            GestureDetector(
              onTap: (){
                Get.to(()=>MyTextFieldScreen(text: 'Enter no', keyboardType: KeyboardType.numeric,));
              },
              child: Container(
                color: Colors.black.withOpacity(0),
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
                child: Text(
                  "Pochi La Biashara",
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

          ],
        ),
      ),
    );
  }
}
