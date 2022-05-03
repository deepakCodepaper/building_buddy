import 'package:building_buddy/utils/widget_functions.dart';
import 'package:building_buddy/view/widget/list_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/categoryType_model.dart';
import '../../utils/styling.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int _selectedProduct = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70.h, left: 16.h, right: 16.h),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: CupertinoSearchTextField(
                      //backgroundColor: AppTheme.searchBackgroundColor,
                      padding: EdgeInsets.all(12.0),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 24.0,
                        color: AppTheme.appColor,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      placeholder: 'Search "Drywall"',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppTheme.appColor,
                      size: 20.h,
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(30.h),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categoryTypeList.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    categoryTypeModel categoryTypeModelList =
                        categoryTypeList[index];
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedProduct = index;
                            });
                          },
                          child: Text(
                            'All',
                            style: TextStyle(
                                color: _selectedProduct == index
                                    ? AppTheme.appColor
                                    : AppTheme.appColor8,
                                fontSize:
                                    _selectedProduct == index ? 20.sp : 16.sp),
                          ),
                        ),
                      );
                    } else {
                      index -= 1;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedProduct = index + 1;
                            });
                          },
                          child: Text(
                            categoryTypeModelList.categoryType,
                            style: TextStyle(
                                color: _selectedProduct == index + 1
                                    ? AppTheme.appColor
                                    : AppTheme.appColor8,
                                fontSize: _selectedProduct == index + 1
                                    ? 20.sp
                                    : 16.sp),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      );
                    }
                  }),
            ),
            addVerticalSpace(5.h),
            ProductList(),
          ],
        ),
      ),
    );
  }
}
