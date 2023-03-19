import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sim_toolkit/mpesa_pages/send.dart';

import '../safaricom_pages/safaricom.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Safaricom',
            style: TextStyle(
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
                Get.to(()=>SafaricomPage());
              }
              ,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
                child: Text(
                  "Safaricom+",
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
              onTap: () {
                //print("tapped");
                Get.to(() => SendMoney());
              },
              child: Container(
                color: Colors.black.withOpacity(0),
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "M-PESA",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Dispay text",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
