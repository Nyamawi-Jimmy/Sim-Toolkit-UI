import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MBanking extends StatelessWidget {
  const MBanking({Key? key}) : super(key: key);

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
            _buildMenuOption("Barclays Bank"),
            _buildMenuOption("Co-op Bank"),
            _buildMenuOption("DTB",),
            _buildMenuOption("Ecobank",),
            _buildMenuOption("Eqity Bank",),
            _buildMenuOption("Family Bnk",),
            _buildMenuOption("Faulu DTM",),
            _buildMenuOption("First Community",),
            _buildMenuOption("I&M Bank",),
            _buildMenuOption("More...",),
          ],
        ),
      ),
    );
  }
}
