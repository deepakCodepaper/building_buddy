import 'package:building_buddy/model/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandsWidget extends StatefulWidget {
  const BrandsWidget({Key? key}) : super(key: key);

  @override
  State<BrandsWidget> createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(vertical: 26.h,horizontal: 22.h),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: brandList.length,
            itemBuilder: (BuildContext context, int index) {
              BrandModel brandModelList =
              brandList[index];
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Image(
                        image: AssetImage(
                            brandModelList.brandImg),
                        height: 121.h,
                        width: 85.h,
                      ),
                ),
              );
            }),
      ),
    );
  }
}
