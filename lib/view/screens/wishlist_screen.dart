import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/styling.dart';
import 'bottom_navigation.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 16.h, right: 16.h),
              child: Stack(
                children: [
                  Center(
                      child: Text(
                    'Wishlist',
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
            ),
            addVerticalSpace(30.h),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 16.h, right: 16.h, top: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/images/Image-2.png'),
                          height: 120.h,
                          width: 120.w,
                          fit: BoxFit.fill,
                        ),
                        addHorizontalSpace(30.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addVerticalSpace(12.h),
                            Text(
                              'Pine',
                              style: TextStyle(
                                  color: AppTheme.appColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '\$4500',
                              style: TextStyle(
                                  color: AppTheme.appColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            addVerticalSpace(18.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h, horizontal: 12.h),
                              color: AppTheme.appColor,
                              child: Center(
                                  child: Text(
                                'In Stock',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    ));
  }
}
