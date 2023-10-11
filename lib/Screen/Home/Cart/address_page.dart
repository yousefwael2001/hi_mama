import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/Cart/select_address.dart';
import 'package:hi_mama/Screen/Home/Cart/voucher_page.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        appBar: AppBar(
          title: Text(
            "New Address",
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
        body: Column(
          children: [
            SizedBox(
              height: 59.8.h,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 45.w, right: 33.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/Group 142.svg",
                          width: 18.33.w,
                        ),
                        SizedBox(
                          width: 16.4.w,
                        ),
                        Text(
                          "My Order",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFF4D4D4D),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18.33.w,
                        ),
                        SizedBox(
                          width: 16.4.w,
                        ),
                        Text(
                          "Adidas ",
                          style: GoogleFonts.poppins(
                            fontSize: 25.15.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "KWD ",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Color(0XFFFF7B80),
                          ),
                        ),
                        Text(
                          "12.00",
                          style: GoogleFonts.poppins(
                            fontSize: 25.15.sp,
                            color: Color(0XFFFF7B80),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SelectAddressPage());
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 15,
                                color: Color(0XFFA6A6A6),
                              ),
                              SizedBox(
                                width: 14.4.w,
                              ),
                              Text(
                                "Delivery Address",
                                style: GoogleFonts.poppins(
                                  fontSize: 28.46.sp,
                                  color: Color(0XFF4D4D4D),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 18.33.w,
                              ),
                              SizedBox(
                                width: 16.4.w,
                              ),
                              Text(
                                "Kuwait City, Sharq, Al Awadhi tower ",
                                style: GoogleFonts.poppins(
                                  fontSize: 25.15.sp,
                                  color: Color(0XFFA6A6A6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/Group 144.svg",
                          width: 18.33.w,
                        ),
                        SizedBox(
                          width: 14.4.w,
                        ),
                        Text(
                          "Payment Method",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFF4D4D4D),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18.33.w,
                        ),
                        SizedBox(
                          width: 16.4.w,
                        ),
                        Text(
                          "777211********46680",
                          style: GoogleFonts.poppins(
                            fontSize: 25.15.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => VoucherPage());
                },
                child: Text(
                  "Complete Order",
                  style: GoogleFonts.poppins(fontSize: 38.9.sp),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(625.13.w, 147.32.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69.07.r),
                  ),
                  backgroundColor: Color(0XFFFF5C63),
                  elevation: 0,
                ),
              ),
            ),
            SizedBox(
              height: 39.h,
            )
          ],
        ),
      ),
    );
  }
}
