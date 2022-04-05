import 'package:building_buddy/view/screens/category_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/category_model.dart';
import '../../utils/styling.dart';
import '../../utils/widget_functions.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            CategoryModel categoryModelList = categoryList[index];
            return GestureDetector(
              onTap: () {
                Get.to(CategoryListScreen(
                  categoryType: categoryModelList.catName,
                ));
              },
              child: Container(
                padding: EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(categoryModelList.categoryImg),
                      height: 85.h,
                      width: 85.h,
                    ),
                    addVerticalSpace(15.h),
                    Text(
                      categoryModelList.catName,
                      style:
                          TextStyle(fontSize: 17.sp, color: AppTheme.appColor),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
