import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sim_toolkit/widgets/text_field.dart';



enum KeyboardType {
  numeric,
  alphabetic,
}

class MyTextFieldScreen extends StatefulWidget {
  final String text;
  final KeyboardType keyboardType;

  MyTextFieldScreen({required this.text, required this.keyboardType});

  @override
  _MyTextFieldScreenState createState() => _MyTextFieldScreenState();
}

class _MyTextFieldScreenState extends State<MyTextFieldScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  TextInputType getKeyboardType() {
    switch (widget.keyboardType) {
      case KeyboardType.numeric:
        return TextInputType.number;
      case KeyboardType.alphabetic:
        return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            widget.text,
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
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              controller: _textController,
              keyboardType: widget.keyboardType == KeyboardType.numeric
                  ? TextInputType.number
                  : TextInputType.text, // or TextInputType.number
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String message = _textController.text;
                    // do something with the message, such as send it to a server
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
