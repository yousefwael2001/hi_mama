import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/home_screen.dart';

import 'address_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        appBar: AppBar(
          title: Text(
            "Cart",
            style: GoogleFonts.poppins(
              fontSize: 27.49.sp,
              color: Color(0XFFFF7B80),
            ),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(67.63.r),
              bottomRight: Radius.circular(67.63.r),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0XFFFF7B80),
                size: 20,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 39.8.h,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 203.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31.41.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 12.r,
                              offset: Offset(-6, 6))
                        ],
                      ),
                      margin: EdgeInsets.only(
                          right: 25.5.w, left: 25.5.w, bottom: 32.9.h),
                      padding: EdgeInsets.only(
                          left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Group 270.png",
                            width: 172.44.w,
                            height: 173.91.h,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 32.6.w,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 26.2.h,
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/Group 329.svg",
                                        width: 17.35.w,
                                      ),
                                      SizedBox(
                                        width: 12.8.w,
                                      ),
                                      Text(
                                        "Adidas - Shirt",
                                        style: GoogleFonts.poppins(
                                          fontSize: 25.15.sp,
                                          color: Color(0XFF4D4D4D),
                                        ),
                                      ),
                                      Spacer(),
                                      SvgPicture.asset(
                                        "assets/images/ZZfpV1.svg",
                                        width: 21.17.w,
                                      ),
                                      SizedBox(
                                        width: 29.9.w,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 378.48.w,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetuer ut laoreet dolore magna ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13.sp,
                                        color: Color(0XFF878787),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        "KWD ",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          color: Color(0XFF4D4D4D),
                                        ),
                                      ),
                                      Text(
                                        "12.00",
                                        style: GoogleFonts.poppins(
                                          fontSize: 25.15.sp,
                                          color: Color(0XFF4D4D4D),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 92.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          border: Border.all(
                                            color: Color(0XFF8C8C8C),
                                            width: 0.5.w,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 11.5.w,
                                            ),
                                            Icon(
                                              Icons.remove,
                                              size: 7,
                                            ),
                                            SizedBox(
                                              width: 7.5.w,
                                            ),
                                            Container(
                                              height: 35,
                                              width: 0.5.w,
                                              color: Color(0XFF8C8C8C),
                                            ),
                                            SizedBox(
                                              width: 11.9.w,
                                            ),
                                            Text(
                                              "1",
                                              style: GoogleFonts.poppins(
                                                fontSize: 17.97.sp,
                                                color: Color(0XFF4D4D4D),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.2.w,
                                            ),
                                            Container(
                                              height: 35,
                                              width: 0.5.w,
                                              color: Color(0XFF8C8C8C),
                                            ),
                                            SizedBox(
                                              width: 7.4.w,
                                            ),
                                            Icon(
                                              Icons.add,
                                              size: 7,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 29.9.w,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 88.3.h,
                ),
                Container(
                  height: 339.47.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.41.r),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(right: 25.5.w, left: 25.5.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 39.1.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 33.7.w,
                          ),
                          Text(
                            "Payment summary",
                            style: GoogleFonts.poppins(
                              fontSize: 29.71.sp,
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 33.7.w,
                          ),
                          Text(
                            "Subtotal",
                            style: GoogleFonts.poppins(
                              fontSize: 22.74.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "KWD 40.600",
                            style: GoogleFonts.poppins(
                              fontSize: 22.74.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            width: 17.4.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 27.8.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 33.7.w,
                          ),
                          Text(
                            "Delivery fee",
                            style: GoogleFonts.poppins(
                              fontSize: 22.74.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "KWD 3.600",
                            style: GoogleFonts.poppins(
                              fontSize: 22.74.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            width: 17.4.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.8.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 33.7.w,
                          ),
                          Text(
                            "Total amount",
                            style: GoogleFonts.poppins(
                              fontSize: 28.46.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "KWD 44.200",
                            style: GoogleFonts.poppins(
                              fontSize: 28.46.sp,
                              color: Color(0XFF4D4D4D),
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            width: 17.4.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 36.7.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 33.7.w,
                          ),
                          Text(
                            "Read more about fees",
                            style: GoogleFonts.poppins(
                              fontSize: 18.87.sp,
                              color: Color(0XFFFF7B80),
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 64.3.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 44.2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.off(HomeScreen());
                          },
                          child: Text(
                            "Add items",
                            style: GoogleFonts.poppins(
                              fontSize: 38.9.sp,
                              color: Color(0XFFFF5F66),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(296.91.w, 147.32.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69.07.r),
                              side: BorderSide(
                                color: Color(0XFF707070),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 29.1.w,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => AddressPage());
                          },
                          child: Text(
                            "Check out",
                            style: GoogleFonts.poppins(fontSize: 38.9.sp),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(296.91.w, 147.32.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69.07.r),
                            ),
                            backgroundColor: Color(0XFFFF5C63),
                            elevation: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 43.9.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 39.h,
                )
              ],
            ),

            // Positioned(
            //   bottom: 39.h,
            //   child: Container(
            //     margin: EdgeInsets.only(left: 44.2.w),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         ElevatedButton(
            //           onPressed: () {},
            //           child: Text(
            //             "Add items",
            //             style: GoogleFonts.poppins(
            //               fontSize: 38.9.sp,
            //               color: Color(0XFFFF5F66),
            //             ),
            //           ),
            //           style: ElevatedButton.styleFrom(
            //             minimumSize: Size(296.91.w, 147.32.h),
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(69.07.r),
            //             ),
            //             backgroundColor: Colors.transparent,
            //             elevation: 0,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 29.1.w,
            //         ),
            //         ElevatedButton(
            //           onPressed: () {},
            //           child: Icon(
            //             Icons.share,
            //             color: Color(0XFFFF5C63),
            //           ),
            //           style: ElevatedButton.styleFrom(
            //             minimumSize: Size(296.91.w, 147.32.h),
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(69.07.r),
            //             ),
            //             backgroundColor: Colors.white,
            //             elevation: 0,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 43.9.w,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
