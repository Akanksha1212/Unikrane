import 'package:flutter/material.dart';

class TranslationButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;

  TranslationButton({
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(16),
          elevation: 8,
          backgroundColor: Colors.black87,
          primary: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
