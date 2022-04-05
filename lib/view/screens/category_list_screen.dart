import 'package:building_buddy/model/categoryType_model.dart';
import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/styling.dart';
import 'bottom_navigation.dart';


class CategoryListScreen extends StatelessWidget {
  final String categoryType;
  CategoryListScreen({required this.categoryType});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80.h, left: 16.h, right: 16.h),
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
              addVerticalSpace(12.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 62.h,
                color: AppTheme.appColor4,
                child: Row(
                  children: [
                    addHorizontalSpace(20.h),
                    Center(
                      child: Text(
                        categoryType,
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: AppTheme.appColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: categoryTypeList.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context,int index){
                    categoryTypeModel categoryTypeModelList = categoryTypeList[index];
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.h,
                      padding: EdgeInsets.only(left: 20.h,right: 20.h,),
                      margin: EdgeInsets.only(left: 16.h,right: 16.h,bottom: 11.h),
                      decoration: BoxDecoration(
                        color: AppTheme.appColor4,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            categoryTypeModelList.categoryType,
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: AppTheme.appColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppTheme.appColor,
                            size: 16.h,
                          ),
                        ],
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
