import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sim_toolkit/mpesa_pages/withdraw.dart';


import '../widgets/text.dart';
import 'buy_airtime.dart';
import 'lipa_mpesa.dart';
import 'loans_savings.dart';
import 'my_account.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  Widget _buildMenuOption(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      backgroundColor: Colors.black.withOpacity(1),
      body: Container(
        margin: EdgeInsets.only(top: 45),
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
                Get.to(()=>MyTextFieldScreen(text: 'Enter phone no', keyboardType: KeyboardType.numeric,));
              },
              child: Container(
                  color: Colors.black.withOpacity(0.9),
                  child: _buildMenuOption("Send Money",)),
            ),
                 GestureDetector(
                   onTap: (){
                     Get.to(()=>WithdrawPage());
                   },
                   child: Container(
                color: Colors.black.withOpacity(0.9),
                    child: _buildMenuOption("Withdraw Cash",)),
                 ),

            GestureDetector(
              onTap: (){
                Get.to(()=>BuyAirtime());
              },
              child: Container(
                  color: Colors.black.withOpacity(0.9),
                  child: _buildMenuOption("Buy Airtime",)),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>LoansSavings());
              },
              child: Container(
                  color: Colors.black.withOpacity(0.9),
                  child: _buildMenuOption("Loans and Savings",)),
            ),
           GestureDetector(
            onTap: (){
              Get.to(()=>LipaMpesa());
            },
            child: Container(
                color: Colors.black.withOpacity(0.9),
                child: _buildMenuOption("Lipa na M-PESA",)),
          ),
            GestureDetector(
              onTap: (){
                Get.to(()=>MyAccount());
              },
              child: Container(
                  color: Colors.black.withOpacity(0.9),
                  child: _buildMenuOption("My Account",)),
            ),
          ],
        ),
      ),
    );
  }
}
