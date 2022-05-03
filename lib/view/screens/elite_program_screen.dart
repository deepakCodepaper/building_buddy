import 'package:building_buddy/model/elite_model.dart';
import 'package:building_buddy/utils/styling.dart';
import 'package:building_buddy/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EliteProgramScreen extends StatelessWidget {
  const EliteProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.appColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              addVerticalSpace(72.h),
              Center(
                  child: Text(
                'Welcome to',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 29.sp,
                    fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                'Elite+ Program',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 29.sp,
                    fontWeight: FontWeight.bold),
              )),
              addVerticalSpace(10.h),
              Image(
                image: AssetImage('assets/images/addCart.png'),
                height: 81.h,
                width: 82.h,
              ),
              addVerticalSpace(12.h),
              Stack(
                children: [
                  Container(
                    color: AppTheme.appColor6,
                    margin:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.h),
                    height: 85.h,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 22.h, right: 15.h),
                          width: 140.h,
                          height: 45.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Non-members',
                                style: TextStyle(
                                    color: AppTheme.appColor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          child: VerticalDivider(thickness: 2.0),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.h, right: 15.h),
                          width: 140.h,
                          height: 45.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Elite PRO+',
                                style: TextStyle(
                                    color: AppTheme.appColor, fontSize: 17.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 27.h,
                    left: 30.h,
                    right: 25.h,
                    bottom: 27.h,
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        'VS',
                        style: TextStyle(
                            color: AppTheme.appColor,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: eliteModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    EliteModel eliteModel = eliteModelList[index];
                    return Container(
                      color: AppTheme.appColor6,
                      margin:
                          EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.h),
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 22.h, right: 15.h),
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: MediaQuery.of(context).size.width / 2.75,
                              child: eliteModel.nonMemberText == null
                                  ? Center(
                                      child: Icon(
                                        Icons.minimize,
                                        color: AppTheme.appColor,
                                        size: 30.0,
                                      ),
                                    )
                                  : Text(
                                      eliteModel.nonMemberText!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppTheme.appColor,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                            ),
                            const VerticalDivider(thickness: 2.0),
                            Container(
                              margin: EdgeInsets.only(left: 15.h, right: 15.h),
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: MediaQuery.of(context).size.width / 2.75,
                              child: Text(
                                eliteModel.eliteMemberText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppTheme.appColor, fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              Container(
                color: AppTheme.appColor7,
                margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.h),
                height: 85.h,
                child: Center(
                  child: Text(
                    'SIGN UP NOW',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              addVerticalSpace(15.h),
            ],
          ),
        ),
      ),
    );
  }
}
