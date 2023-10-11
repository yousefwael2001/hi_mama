import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/Cart/select_address_map.dart';
import 'package:hi_mama/Screen/Home/Cart/voucher_page.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({super.key});

  @override
  State<SelectAddressPage> createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/Group 67.png"),
                  SizedBox(
                    height: 96.3.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 45.w, right: 33.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address Nickname ( optional )",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        Text(
                          "Area",
                          style: GoogleFonts.poppins(
                            fontSize: 17.25.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Text(
                          "Abu Fatira",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 29.9.h,
                        ),
                        Text(
                          "Address Type",
                          style: GoogleFonts.poppins(
                            fontSize: 17.25.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Apartment",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFF000000),
                              ),
                            ),
                            Spacer(),
                            Transform.rotate(
                                angle: -3.14,
                                child: Icon(Icons.arrow_back_ios_new))
                          ],
                        ),
                        SizedBox(
                          height: 24.9.h,
                        ),
                        Text(
                          "Block",
                          style: GoogleFonts.poppins(
                            fontSize: 17.25.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Block 7",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFF000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.9.h,
                        ),
                        Text(
                          "Street",
                          style: GoogleFonts.poppins(
                            fontSize: 17.25.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Street 164",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFF000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.9.h,
                        ),
                        Text(
                          "Street",
                          style: GoogleFonts.poppins(
                            fontSize: 17.25.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Avenue ( optional )",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFFA6A6A6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 48.h,
                        ),
                        Text(
                          "Building",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          "Floor",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          "Apartment No.",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Text(
                          "Additional Direction ( optional )",
                          style: GoogleFonts.poppins(
                            fontSize: 28.46.sp,
                            color: Color(0XFFA6A6A6),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "+965",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFFA6A6A6),
                              ),
                            ),
                            SizedBox(
                              width: 23.8.w,
                            ),
                            Transform.rotate(
                              angle: -1.57,
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 15,
                                color: Color(0XFFA6A6A6),
                              ),
                            ),
                            SizedBox(
                              width: 19.6.w,
                            ),
                            Text(
                              "Mobile Number",
                              style: GoogleFonts.poppins(
                                fontSize: 28.46.sp,
                                color: Color(0XFFA6A6A6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 180.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 350.8.h,
                right: 221.5.w,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => SelectAddressMapPage());
                  },
                  child: Container(
                    width: 288.w,
                    height: 76.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.r),
                      border: Border.all(
                        color: Color(0XFF707070),
                        width: 3.w,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Refine Location",
                        style: GoogleFonts.poppins(
                          fontSize: 21.06.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFFF7B80),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41.9.w),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
