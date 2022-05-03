import 'package:building_buddy/utils/widget_functions.dart';
import 'package:building_buddy/view/screens/all_categories_screen.dart';
import 'package:building_buddy/view/screens/shopBy_brands_screen.dart';
import 'package:building_buddy/view/widget/best_selling.dart';
import 'package:building_buddy/view/widget/brands_widget.dart';
import 'package:building_buddy/view/widget/category_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/styling.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              padding: EdgeInsets.only(top: 40.h, left: 16.h, right: 16.h),
              child: Column(
                children: [
                  CupertinoSearchTextField(
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
                  addVerticalSpace(40.h),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: AppTheme.appColor,
                                fontWeight: FontWeight.w800),
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(AllCategoriesScreen());
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppTheme.appColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      addVerticalSpace(13.h),
                      SizedBox(
                        height: 150.h,
                        child: const CategoryWidget(),
                      ),
                    ],
                  ),
                  addVerticalSpace(20.h),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Best Selling',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppTheme.appColor,
                                  fontWeight: FontWeight.w800),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(ShopByBrandsScreen());
                              },
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppTheme.appColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        addVerticalSpace(13.h),
                        const Expanded(child: BestSellingWidget()),
                      ],
                    ),
                  ),
                  addVerticalSpace(20.h),
                  /*Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Brands',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: AppTheme.appColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      addVerticalSpace(13.h),
                    ],
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
