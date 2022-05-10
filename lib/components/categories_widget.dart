import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final String asset;
  final String description;
  final String inkwellText;
  final VoidCallback onTap;
  CategoryWidget(
      {required this.title,
      required this.asset,
      required this.description,
      required this.onTap,
      required this.inkwellText});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: description,
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(15),
      textStyle: TextStyle(color: Colors.black, fontSize: 15.sp),
      height: 50,
      showDuration: Duration(seconds: 6),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image(image: AssetImage(asset)),
            SizedBox(
              height: 20.h,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(inkwellText),
                  Icon(
                    Icons.arrow_forward,
                    size: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
