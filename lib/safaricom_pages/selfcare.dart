import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SelfCare extends StatelessWidget {
  const SelfCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only( top: 20),
          child: Text(
            'Selfcare',
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
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
              child: Text(
                "Prepaid",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            SizedBox(height: 7),
            // buy goods
            Container(
              color: Colors.black.withOpacity(0),
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Postpaid",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            //Pochi la biashara
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, bottom: 15),
              child: Text(
                "M-PESA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
