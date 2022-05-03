import 'package:building_buddy/view/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/styling.dart';
import '../../utils/widget_functions.dart';
import 'bottom_navigation.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 70.h, left: 16.h, right: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                      child: Text(
                    'Write Review',
                    style: TextStyle(
                        color: AppTheme.appColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  )),
                  Positioned(
                    top: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(BottomNavigation_Screen());
                      },
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: AppTheme.appColor,
                        size: 18.h,
                      ),
                    ),
                  ),
                ],
              ),
              addVerticalSpace(54.h),
              Text(
                'Steel Stud',
                style: TextStyle(
                    color: AppTheme.appColor,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold),
              ),
              addVerticalSpace(50.h),
              Center(
                child: RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 15.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: AppTheme.appColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              addVerticalSpace(70.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tell us your experience',
                  labelStyle: TextStyle(color: AppTheme.appColor13),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.appColor13),
                  ),
                ),
              ),
              addVerticalSpace(75.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: PrimaryButton('SEND')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
