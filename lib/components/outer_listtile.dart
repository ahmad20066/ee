import 'package:clinic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OuterListtile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  OuterListtile({
    required this.title,
    required this.children,
  });
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.white,
      iconColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 15.sp, color: Colors.white, fontWeight: FontWeight.w900),
      ),
      children: children,
    );
  }
}
