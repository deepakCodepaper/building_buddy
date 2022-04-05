import 'package:building_buddy/utils/widget_functions.dart';
import 'package:building_buddy/view/screens/login_screen.dart';
import 'package:building_buddy/view/widget/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styling.dart';
import 'package:get/get.dart';
import '../widget/primary_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  'Sign up',
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
                ),
                addVerticalSpace(40.h),
                SignupForm(),
                addVerticalSpace(60.h),
                GestureDetector(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: PrimaryButton('SIGN UP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
