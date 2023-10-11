import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/home_screen.dart';

class SuccessOrderPage extends StatefulWidget {
  const SuccessOrderPage({super.key});

  @override
  State<SuccessOrderPage> createState() => _SuccessOrderPageState();
}

class _SuccessOrderPageState extends State<SuccessOrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Group 59.png",
                width: 283.08.w,
                height: 283.07.h,
              ),
              SizedBox(
                height: 46.8.h,
              ),
              Text(
                "Payment successful !",
                style: GoogleFonts.poppins(
                  fontSize: 29.71.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 103.5.h,
              ),
              Text(
                "View details",
                style: GoogleFonts.poppins(
                  fontSize: 25.9.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: 165.w,
                height: 4.h,
                color: Color(0XFFFF7B80),
              ),
              SizedBox(
                height: 39.7.h,
              ),
              Text(
                "Send receipt",
                style: GoogleFonts.poppins(
                  fontSize: 25.9.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: 165.w,
                height: 4.h,
                color: Color(0XFFFF7B80),
              ),
              SizedBox(
                height: 115.8.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.off(() => HomeScreen());
                },
                child: Text(
                  "Return to home",
                  style: GoogleFonts.poppins(
                    fontSize: 29.93.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
