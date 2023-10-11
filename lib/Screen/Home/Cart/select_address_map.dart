import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/Cart/voucher_page.dart';

class SelectAddressMapPage extends StatefulWidget {
  const SelectAddressMapPage({super.key});

  @override
  State<SelectAddressMapPage> createState() => _SelectAddressMapPageState();
}

class _SelectAddressMapPageState extends State<SelectAddressMapPage> {
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
              Image.asset("assets/images/Group 61.png"),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41.9.w),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Confirm",
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
