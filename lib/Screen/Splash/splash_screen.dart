import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Auth/register_screen.dart';

import '../Home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFF7B80),
        body: Column(
          children: [
            SizedBox(
              height: 101.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 23.9.w,
                ),
                SvgPicture.asset(
                  "assets/images/Group 470.svg",
                  fit: BoxFit.scaleDown,
                  width: 41.w,
                ),
                SizedBox(
                  width: 218.9.w,
                ),
                Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                    fontSize: 27.49.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 318.3.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/Group 230.png",
                width: 278.58.w,
                height: 282.57.h,
              ),
            ),
            SizedBox(
              height: 216.4.h,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => RegisterScreen());
              },
              child: Text(
                "REGISTER NOW",
                style: GoogleFonts.poppins(
                  fontSize: 20.62.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF548088),
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  515.43.w,
                  67.01.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.r),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 139.h,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => HomeScreen());
              },
              child: Text(
                "Or continue as a visitor",
                style: GoogleFonts.poppins(
                  fontSize: 27.49.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFECECEC),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
