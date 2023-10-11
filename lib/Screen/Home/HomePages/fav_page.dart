import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ProductDetails/product_details.dart';
import '../ProductDetails/product_details1.dart';

class FavPage extends StatelessWidget {
  const FavPage({
    super.key,
    required ScrollController scrollController,
    required bool isAppBarTransparent,
  })  : _scrollController = scrollController,
        _isAppBarTransparent = isAppBarTransparent;

  final ScrollController _scrollController;
  final bool _isAppBarTransparent;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 110.h,
          // primary: false,
          // floating: false,
          // excludeHeaderSemantics: true,
          // forceElevated: true,
          stretch: true,
          pinned: true,
          title: Container(
            height: 82.47.h,
            margin: EdgeInsets.only(
              bottom: 33.9.h,
              left: 24.9.w,
              right: 24.9.w,
              top: 10.h,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(_isAppBarTransparent ? 60.r : 70.r),
                  borderSide: BorderSide.none,
                ),
                fillColor: _isAppBarTransparent
                    ? Color(0XFFFFA7A9)
                    : Color(0XFFD8D8D8),
                filled: true,
                prefixIcon: _isAppBarTransparent
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 21.8.h, top: 25.8.h),
                        child: SvgPicture.asset("assets/images/Group 441.svg"),
                      )
                    : null,
                hintText: 'Search',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: _isAppBarTransparent
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(left: 30.w, right: 0),
                suffixIcon: _isAppBarTransparent
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 42.h,
                            width: 1.w,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          SvgPicture.asset(
                            "assets/images/Group 448.svg",
                            width: 33.w,
                            height: 33.h,
                          ),
                          SizedBox(
                            width: 38.8.w,
                          )
                        ],
                      )
                    : Container(
                        height: 67.h,
                        width: 67.w,
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 19.8.h, bottom: 17.8.h),
                          child: SvgPicture.asset(
                            "assets/images/Group 287.svg",
                          ),
                        ),
                      ),
              ),
            ),
          ),
          centerTitle: true,
          titleSpacing: 0,
          leadingWidth: 0,
          leading: SizedBox(),
          backgroundColor:
              _isAppBarTransparent ? Color(0XFFFF7B80) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60.r),
              bottomRight: Radius.circular(60.r),
            ),
          ),
          flexibleSpace: SizedBox(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 33.2.h,
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Row(
                children: [
                  SizedBox(
                    width: 44.2.w,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.favorite_border),
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
                    width: 29.1.w,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.share,
                        color: Color(0XFFFF5C63),
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
                    width: 43.9.w,
                  ),
                ],
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 48.3.h,
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
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
                padding:
                    EdgeInsets.only(left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
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
                                    borderRadius: BorderRadius.circular(15.r),
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
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
