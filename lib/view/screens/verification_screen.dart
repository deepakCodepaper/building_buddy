import 'package:building_buddy/utils/widget_functions.dart';
import 'package:building_buddy/view/screens/bottom_navigation.dart';
import 'package:building_buddy/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/style.dart';
import '../../utils/styling.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import '../widget/primary_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppTheme.appBackgroundColor,
                  AppTheme.appBackgroundColor2
                ]),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 80.h, left: 30.h, right: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppTheme.appColor,
                  ),
                ),
                addVerticalSpace(70.h),
                Text(
                  'Verification',
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
                ),
                Text(
                  'A 6 - Digit PIN has been sent to your email address, enter it below to continue',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff929292),
                      letterSpacing: 0.4,
                      height: 1.5),
                ),
                addVerticalSpace(60.h),
                buildOtpField(context),
                addVerticalSpace(65.h),
                GestureDetector(
                  onTap: () {
                    Get.to(BottomNavigation_Screen());
                  },
                  child: PrimaryButton('CONTINUE'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildOtpField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: OTPTextField(
          length: 6,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 45,
          fieldStyle: FieldStyle.box,
          outlineBorderRadius: 3,
          style: TextStyle(fontSize: 15),
          onChanged: (pin) {
            print("Changed: " + pin);
          },
          onCompleted: (pin) {
            print("Completed: " + pin);
          }),
    );
  }
}
