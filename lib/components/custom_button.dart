import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  IconData? icon;
  final EdgeInsetsGeometry padding;
  CustomButton(
      {required this.text,
      this.padding = EdgeInsets.zero,
      required this.width,
      required this.height,
      required this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onTap,
          child: Row(
            children: [
              if (icon != null) Icon(icon),
              Expanded(
                  child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                ),
              )),
            ],
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color.fromARGB(255, 76, 175, 130),
          ),
        ),
      ),
    );
  }
}
