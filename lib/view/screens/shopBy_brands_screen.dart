import 'package:building_buddy/model/category_model.dart';
import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styling.dart';

class ShopByBrandsScreen extends StatelessWidget {
  const ShopByBrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 72.h, left: 16.h, right: 16.h),
              child: CupertinoSearchTextField(
                //backgroundColor: AppTheme.searchBackgroundColor,
                padding: EdgeInsets.all(12.0),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24.0,
                  color: AppTheme.appColor,
                ),
                borderRadius: BorderRadius.circular(20.0),
                placeholder: 'search "Drywall"',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            addVerticalSpace(33.h),
            Text(
              'Shop By Brands',
              style: TextStyle(
                  color: AppTheme.appColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(28.h),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 25,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 60.h),
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 10.h,
                    mainAxisSpacing: 10.h,
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 6 / 3),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.appColor5,
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/images/trim.png'),
                      height: 40.h,
                      width: 40.h,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
