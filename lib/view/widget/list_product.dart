import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/styling.dart';
import '../../utils/widget_functions.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 25,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 60.h),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10.h,
            mainAxisSpacing: 10.h,
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 3.15),
        itemBuilder: (context, index) {
          int _counter = 1;
          return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/images/Image-2.png'),
                  height: 120.h,
                  width: 168.h,
                  fit: BoxFit.fitWidth,
                ),
                addVerticalSpace(11.h),
                Padding(
                  padding: EdgeInsets.only(left: 18.h, right: 18.h),
                  child: Text(
                    'Type X Fire Resistant Drywall Panel',
                    style: TextStyle(
                        color: AppTheme.appColor, fontSize: 10.sp,fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    '1/2 in. x 4 ft. x 8 ft.',
                    style: TextStyle(
                        color: AppTheme.appColor8, fontSize: 8.sp),
                  ),
                ),
                addVerticalSpace(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        '\$20.25',
                        style: TextStyle(
                            color: AppTheme.appColor, fontSize: 10.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: Row(
                        children: [
                          Text(
                            'Elite+',
                            style: TextStyle(
                                color: AppTheme.appColor9,
                                fontSize: 9.sp),
                          ),
                          Container(
                            child: Text(
                              '\$19.50',
                              style: TextStyle(
                                  color: AppTheme.appColor,
                                  fontSize: 8.sp),
                            ),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.80),
                                    blurRadius: 0.1,
                                    offset: const Offset(1, 1), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white
                            ),
                            margin: EdgeInsets.only(left:6.h),
                            padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 3.h),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(14.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CartStepperInt(
                      activeBackgroundColor: Colors.white,
                      activeForegroundColor: Colors.black,
                      count: _counter,
                      size: 30,
                      didChangeCount: (count) {
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Image(
                        image: const AssetImage(
                            'assets/images/addCart.png'),
                        height: 27.h,
                        width: 29.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
