import 'package:building_buddy/utils/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;

  PrimaryButton(@required this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(color: AppTheme.appColor),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}
