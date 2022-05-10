import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaIcon extends StatelessWidget {
  final String asset;
  final VoidCallback onTap;
  SocialMediaIcon({
    required this.asset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 15.h,
        backgroundColor: Colors.grey[200],
        child: Image(
          image: AssetImage(asset),
          height: 15.h,
        ),
      ),
    );
  }
}
