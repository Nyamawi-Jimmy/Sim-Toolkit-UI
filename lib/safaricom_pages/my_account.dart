import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sim_toolkit/safaricom_pages/selfcare.dart';
import 'package:sim_toolkit/safaricom_pages/top_up.dart';

import 'balance-enquiry.dart';
import 'customer_care.dart';


class MyAccountSaf extends StatelessWidget {
  const MyAccountSaf({Key? key}) : super(key: key);

  Widget _buildMenuOption(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 0.5,
          color: Colors.grey.withOpacity(0.3),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20, bottom: 15),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 0.5,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.black.withOpacity(0.9),
        title: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Text("My Account",style: TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),),
          ),
        ),
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
              GestureDetector(
                onTap: (){
                  Get.to(()=>BalanceEnquiry());
                },
                child:   Container(
                  color: Colors.black.withOpacity(0),
                    width: double.maxFinite,
                    child: _buildMenuOption("Balance enquiry")),
              ),
            GestureDetector(
              onTap: (){
                Get.to(()=>TopUp());
              },
              child:   Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Top-up")),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>SelfCare());
              },
              child:   Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Selfcare")),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>CustomerCare());
              },
              child:   Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Customer Care")),
            ),
          ],
        ),
      ),
    );
  }
}
