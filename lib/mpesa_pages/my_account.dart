import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/text.dart';


class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

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
        title: Padding(
          padding: const EdgeInsets.only(top: 30,left: 20),
          child: Text("My Account",style: TextStyle(
            color: Colors.white,
                fontSize: 21,
          ),),
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
                Get.to(()=>MyTextFieldScreen(text: 'Enter M-PESA Pin', keyboardType: KeyboardType.numeric,));
              },
              child: Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Mini Statement")),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>MyTextFieldScreen(text: 'Enter M-PESA Pin', keyboardType: KeyboardType.numeric,));
              },
              child: Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Check Balance",)),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>MyTextFieldScreen(text: 'Enter Old Pin', keyboardType: KeyboardType.numeric,));
              },
              child: Container(
                  color: Colors.black.withOpacity(0),
                  width: double.maxFinite,
                  child: _buildMenuOption("Change M-PESA PIN",)),
            ),
            _buildMenuOption("Change Language",),
           GestureDetector(
             onTap: (){
               Get.to(()=>MyTextFieldScreen(text: 'Enter M-PESA Pin', keyboardType: KeyboardType.numeric,));
             },
             child: Container(
                 color: Colors.black.withOpacity(0),
                 width: double.maxFinite,
                 child: _buildMenuOption("Update Customer Menu",)),
           ),
          ],
        ),
      ),
    );
  }
}
