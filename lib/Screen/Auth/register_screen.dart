import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFECECEC),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 101.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 23.9.w,
                  ),
                  SvgPicture.asset(
                    "assets/images/Group 470.svg",
                    fit: BoxFit.scaleDown,
                    width: 41.w,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 168.w,
                  ),
                  Text(
                    "Create account",
                    style: GoogleFonts.poppins(
                      fontSize: 27.49.sp,
                      color: Color(0XFFFF7B80),
                      fontWeight: FontWeight.w600,
                      height: .8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 57.7.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 56.3.w),
                child: Text(
                  "We provide a full range of\npediatric services for your\nfamiliy.",
                  style: GoogleFonts.poppins(
                    fontSize: 34.36.sp,
                    color: Color(0XFFFF7B80),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 33.4.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 56.3.w),
                child: Text(
                  "Your email",
                  style: GoogleFonts.poppins(
                    fontSize: 27.49.sp,
                    color: Color(0XFF4D4D4D),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 42.7.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: SizedBox(
                  height: 90.14.h,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 32.4.w),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      hintText: "youremail@gmail.com",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 24.05.sp,
                        color: Color(0XFF9395A3),
                      ),
                      suffixIcon: Icon(
                        Icons.check,
                        color: Color(0XFF80B297),
                        size: 25,
                        weight: 2,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.8.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 56.3.w),
                child: Text(
                  "Password",
                  style: GoogleFonts.poppins(
                    fontSize: 27.49.sp,
                    color: Color(0XFF4D4D4D),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 40.4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: SizedBox(
                  height: 90.14.h,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 32.4.w),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      hintText: "***********",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 24.05.sp,
                        color: Color(0XFF9395A3),
                      ),
                      suffixIcon: Icon(
                        Icons.check,
                        color: Color(0XFF80B297),
                        size: 25,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 63.9.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  child: Text(
                    "CREATE ACCOUNT",
                    style: GoogleFonts.poppins(
                      fontSize: 20.62.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFFFFFFF),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      double.infinity,
                      82.47.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    elevation: 0,
                    backgroundColor: Color(0XFFFF7B80),
                  ),
                ),
              ),
              SizedBox(
                height: 55.2.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 56.3.w),
                child: Text(
                  "Or Sign in with Google",
                  style: GoogleFonts.poppins(
                    fontSize: 27.49.sp,
                    color: Color(0XFF2F3535),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 61.5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Google",
                    style: GoogleFonts.poppins(
                      fontSize: 27.49.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF1A1E36),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      double.infinity,
                      88.42.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.38.r),
                      side: BorderSide(
                        color: Color(0XFF050060),
                        width: 1.w,
                      ),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                height: 30.9.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Facebook",
                    style: GoogleFonts.poppins(
                      fontSize: 27.49.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      double.infinity,
                      90.14.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.38.r),
                      side: BorderSide.none,
                    ),
                    elevation: 0,
                    backgroundColor: Color(0XFF4780FF),
                  ),
                ),
              ),
              SizedBox(
                height: 39.1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 27.49.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF2F3535),
                    ),
                  ),
                  SizedBox(
                    width: 12.5.w,
                  ),
                  Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                      fontSize: 27.49.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFFF7B80),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
