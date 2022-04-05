import 'package:building_buddy/utils/styling.dart';
import 'package:building_buddy/utils/widget_functions.dart';
import 'package:building_buddy/view/screens/signup_screen.dart';
import 'package:building_buddy/view/screens/verification_screen.dart';
import 'package:building_buddy/view/widget/login_form.dart';
import 'package:building_buddy/view/widget/login_option.dart';
import 'package:building_buddy/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(top: 100.h, left: 30.h, right: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,',
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
                ),
                addVerticalSpace(5.h),
                Text(
                  'Sign in to Continue',
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff929292)),
                ),
                addVerticalSpace(30.h),
                LoginForm(),
                addVerticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(SignupScreen());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: AppTheme.appColor, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(20.h),
                GestureDetector(
                  onTap: (){
                    Get.to(VerificationScreen());
                  },
                  child: PrimaryButton('SIGN IN'),
                ),
                addVerticalSpace(40.h),
                Center(
                  child: Text(
                    '-OR-',
                    style: TextStyle(color: AppTheme.appColor, fontSize: 18.sp),
                  ),
                ),
                addVerticalSpace(40.h),
                LoginOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
