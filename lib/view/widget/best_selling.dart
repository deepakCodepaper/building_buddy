import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cart_stepper/cart_stepper.dart';
import '../../model/best_selling.dart';
import '../../utils/styling.dart';

class BestSellingWidget extends StatefulWidget {
  const BestSellingWidget({Key? key}) : super(key: key);

  @override
  State<BestSellingWidget> createState() => _BestSellingWidgetState();
}

class _BestSellingWidgetState extends State<BestSellingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: bestSellingList.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            int _counter = 1;
            BestSellingModel BestSellingModelList = bestSellingList[index];
            return Container(
              margin: EdgeInsets.only(bottom: 5.h),
              child: Card(
                elevation: 10.0,
                shadowColor: AppTheme.appBackgroundColor2,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.only(left: 10.h),
                      child: Image(
                        image: AssetImage(
                            BestSellingModelList.productImg),
                        fit: BoxFit.fill,
                        height: 145.h,
                        width: 130.h,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 145.h,
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceEvenly,
                          children: [
                            Text(
                              BestSellingModelList.productName,
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color:
                                  AppTheme.appColor,
                                  fontWeight:
                                  FontWeight.bold),
                            ),
                            Text(
                              "\$" + BestSellingModelList.productAmt,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color:
                                  AppTheme.appColor,
                                  fontWeight:
                                  FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: CartStepperInt(
                                    activeBackgroundColor: Colors.white,
                                    activeForegroundColor: Colors.black,
                                    count: _counter,
                                    size: 30,
                                    didChangeCount: (count) {
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/addCart.png'),
                                    height: 35.h,
                                    width: 35.h,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
