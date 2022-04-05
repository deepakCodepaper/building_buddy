import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styling.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildButton(
          iconImage: Image(
            height: 20.h,
            width: 20.h,
            image: AssetImage('assets/images/fb.png'),
          ),
          buttonText: 'Sign in with Facebook',
        ),
        addVerticalSpace(40.h),
        BuildButton(
          iconImage: Image(
            height: 20.h,
            width: 20.h,
            image: AssetImage('assets/images/google.png'),
          ),
          buttonText: 'Sign in with Google',
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String buttonText;

  BuildButton({required this.iconImage, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: AppTheme.appColor2)),
      child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconImage,
              addHorizontalSpace(20.h),
              Text(
                buttonText,
                style: TextStyle(color: AppTheme.appColor, fontSize: 14.sp),
              ),
            ],
          ),
    );
  }
}
