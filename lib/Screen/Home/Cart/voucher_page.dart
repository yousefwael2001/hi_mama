import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/Cart/success_order.dart';

import 'check_out.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        appBar: AppBar(
          title: Text(
            "Voucher",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 38.9.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 91.5.w,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SuccessOrderPage());
                        },
                        child: Text(
                          "Voucher",
                          style: GoogleFonts.poppins(
                            fontSize: 20.77.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(432.91.w, 147.32.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(69.07.r),
                          ),
                          backgroundColor: Color(0XFFFF5C63),
                          elevation: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.5.w,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => SuccessOrderPage());
                        },
                        child: Text(
                          "GIft Box",
                          style: GoogleFonts.poppins(
                            fontSize: 20.77.sp,
                            color: Color(0XFFFF7B80),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(432.91.w, 147.32.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(69.07.r),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 94.5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 97.1.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 557.91.h,
                    width: 524.16.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Group 56.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(60.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 12.r,
                            offset: Offset(-4, 4),
                          )
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 77.h,
                        ),
                        Text(
                          "National Day Discount ",
                          style: GoogleFonts.poppins(
                            fontSize: 24.65.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "25%",
                          style: GoogleFonts.poppins(
                            fontSize: 124.01.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "OFF",
                          style: GoogleFonts.poppins(
                            fontSize: 52.24.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            height: .4,
                          ),
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Image.asset(
                          "assets/images/Line 10.png",
                          width: 452.19.w,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Redeem",
                            style: GoogleFonts.poppins(
                              fontSize: 20.77.sp,
                              color: Color(0XFFFF7B80),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(184.24.w, 52.45.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69.07.r),
                            ),
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 86.7.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 119.5.w),
                  child: Text(
                    "National Day",
                    style: GoogleFonts.poppins(
                      fontSize: 40.01.sp,
                      color: Color(0XFF000000),
                    ),
                  ),
                ),
                Container(
                  width: 500.w,
                  padding: EdgeInsets.only(left: 119.5.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, \nconsectetuer adipiscing elit, sed diam nonummy nibh ",
                    style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      color: Color(0XFFA6A6A6),
                    ),
                  ),
                ),
                SizedBox(
                  height: 61.2.h,
                ),
                Container(
                  width: 500.w,
                  padding: EdgeInsets.only(left: 119.5.w),
                  child: Text(
                    "Exp - 29/02/2023",
                    style: GoogleFonts.poppins(
                      fontSize: 37.78.sp,
                      color: Color(0XFFA6A6A6),
                    ),
                  ),
                ),
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
