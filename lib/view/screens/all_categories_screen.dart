import 'package:building_buddy/model/category_model.dart';
import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styling.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({Key? key}) : super(key: key);

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
          'All Categories',
          style: TextStyle(
              color: AppTheme.appColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(28.h),
        GridView.count(
          physics: BouncingScrollPhysics(),
          mainAxisSpacing: 20.h,
          shrinkWrap: true,
          crossAxisCount: 3,
          padding: EdgeInsets.only(left: 5.h,right: 5.h,bottom: 60.h),
          children:
            List.generate(categoryList.length, (index){
              CategoryModel categoryModelList = categoryList[index];
              return Column(
                children: [
                  Image(
                    image: AssetImage(categoryModelList.categoryImg),
                    height: 80.h,
                    width: 80.h,
                  ),
                  addVerticalSpace(10.h),
                  Text(
                    categoryModelList.catName,
                    style:
                    TextStyle(fontSize: 15.sp, color: AppTheme.appColor),
                  ),
                ],
              );
        }),
        ),
      ],
    ),
      ),
    );
  }
}
