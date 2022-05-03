import 'package:building_buddy/model/menu_model.dart';
import 'package:building_buddy/utils/styling.dart';
import 'package:building_buddy/view/screens/elite_program_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: 40.h, left: 16.h, right: 16.h, bottom: 26.h),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/studs0.png'),
                      height: 120.h,
                      width: 120.w,
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Azar NEMANLI',
                              style: TextStyle(
                                  fontSize: 26.sp,
                                  color: AppTheme.appColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'azar@gmail.com',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppTheme.appColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: menuModelList.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    MenuModel menuModel = menuModelList[index];
                    String? status = menuModel.menuStatus;
                    return GestureDetector(
                      onTap: (){
                        if(index==7){
                          Get.to(EliteProgramScreen());
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 13.h, right: 20.h),
                        child: ListTile(
                          leading: Container(
                            height: 40.h,
                            width: 40.h,
                            color: AppTheme.appColor5,
                            child: Icon(
                              Icons.edit_rounded,
                              color: Colors.black,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                menuModel.menuTitle,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: AppTheme.appColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              if (status != null) Container(
                                      color: AppTheme.appColor,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.h, horizontal: 10.h),
                                      margin: EdgeInsets.only(left: 20.h),
                                      child: Text(
                                        status,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12.sp),
                                      ),
                                    ),
                            ],
                          ),
                          trailing: menuModel.menuTrailing == true ? Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppTheme.appColor,
                            size: 15.h,
                          ): null,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
