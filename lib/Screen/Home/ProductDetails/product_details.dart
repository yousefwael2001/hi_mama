import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0XFFECECEC),
        body: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 921.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFFEAEBED),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF707070).withOpacity(.50),
                        blurRadius: 20.r,
                        offset: Offset(2, 6),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(65.r),
                      bottomRight: Radius.circular(65.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 91.4.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 44.2.w,
                          ),
                          CircleAvatar(
                            radius: 25.5.r,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Color(0XFFFF7B80),
                                size: 20,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Product Details",
                            style: GoogleFonts.poppins(
                              fontSize: 27.49.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 25.5.r,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0XFFFF7B80),
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 43.9.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Image.asset(
                          "assets/images/kVZ3Di.png",
                          width: 500.w,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 14.42.h,
                            width: 14.42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4.6.w,
                          ),
                          Container(
                            height: 14.42.h,
                            width: 14.42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4.6.w,
                          ),
                          Container(
                            height: 14.42.h,
                            width: 14.42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4.6.w,
                          ),
                          Container(
                            height: 14.42.h,
                            width: 14.42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4.6.w,
                          ),
                          Container(
                            height: 14.42.h,
                            width: 14.42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.8.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 52.9.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 44.2.w,
                    ),
                    Text(
                      "White Shoe",
                      style: TextStyle(
                        fontFamily: "SourceSansVariable",
                        fontSize: 38.9.sp,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF4D4D4D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "KWD 20.300",
                      style: TextStyle(
                        fontFamily: "SourceSansVariable",
                        fontSize: 38.9.sp,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF4D4D4D),
                      ),
                    ),
                    SizedBox(
                      width: 16.8.w,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44.2.w),
                  child: Text(
                    "adidas",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 25.15.sp,
                      color: Color(0XFFBFBFBF),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.3.w,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 44.2.w,
                    ),
                    Image.asset(
                      "assets/images/Group 470.png",
                      width: 117.61.w,
                    ),
                    SizedBox(
                      width: 18.6.w,
                    ),
                    Text(
                      "50+ Reviews",
                      style: TextStyle(
                        fontFamily: "SourceSansVariable",
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFFBFBFBF),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 37.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "XS",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                        color: Color(0XFFFF5C63),
                      ),
                      child: Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "XL",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.14.r),
                        border: Border.all(
                          color: Color(0XFF707070),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "XXL",
                          style: TextStyle(
                            fontFamily: "SourceSansVariable",
                            fontSize: 27.38.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF4D4D4D),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.6.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44.2.w),
                  child: Row(
                    children: [
                      Text(
                        "Colors",
                        style: TextStyle(
                          fontFamily: "SourceSansVariable",
                          fontSize: 25.15.sp,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFFBFBFBF),
                        ),
                      ),
                      SizedBox(
                        width: 14.7.w,
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        margin: EdgeInsets.only(right: 9.7.w),
                        decoration: BoxDecoration(
                          color: Color(0XFFBAA58C),
                          borderRadius: BorderRadius.circular(4.97.r),
                        ),
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        margin: EdgeInsets.only(right: 9.7.w),
                        decoration: BoxDecoration(
                          color: Color(0XFFB4272D),
                          borderRadius: BorderRadius.circular(4.97.r),
                        ),
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        margin: EdgeInsets.only(right: 9.7.w),
                        decoration: BoxDecoration(
                          color: Color(0XFF009C90),
                          borderRadius: BorderRadius.circular(4.97.r),
                        ),
                      ),
                      Container(
                        height: 20.h,
                        width: 20.w,
                        margin: EdgeInsets.only(right: 9.7.w),
                        decoration: BoxDecoration(
                          color: Color(0XFF4D4D4D),
                          borderRadius: BorderRadius.circular(4.97.r),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.7.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44.2.w),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 25.15.sp,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFF4D4D4D),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44.2.w, top: 5.h),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt",
                    style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      color: Color(0XFF878787),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h,
                ),
              ],
            ),
            Positioned(
              bottom: 39.h,
              child: Container(
                margin: EdgeInsets.only(left: 44.2.w),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Ckeck out",
                        style: GoogleFonts.poppins(
                          fontSize: 38.9.sp,
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
                    SizedBox(
                      width: 43.9.w,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/images/Group 160.svg",
                        width: 52.w,
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(146.13.w, 147.32.h),
                        shape: CircleBorder(),
                        backgroundColor: Color(0XFFD8D8D8),
                        elevation: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
