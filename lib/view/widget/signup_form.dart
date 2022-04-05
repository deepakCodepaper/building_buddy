import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styling.dart';
import '../../utils/widget_functions.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Name', false),
        addVerticalSpace(20.h),
        buildInputForm('Email', false),
        addVerticalSpace(20.h),
        buildInputForm('Password', true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: AppTheme.appColor),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.appColor),
            ),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: AppTheme.appColor,
                    ),
                  )
                : null),
      ),
    );
  }
}
