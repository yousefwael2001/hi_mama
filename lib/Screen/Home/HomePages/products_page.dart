import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/ProductDetails/product_details.dart';

import '../ProductDetails/product_details1.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({
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
                    : Color(0XFFD8D8D8).withOpacity(.41),
                filled: true,
                prefixIcon: _isAppBarTransparent
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 21.8.h, top: 25.8.h),
                        child: SvgPicture.asset("assets/images/Group 441.svg"),
                      )
                    : null,
                hintText: 'Search',
                hintStyle: _isAppBarTransparent
                    ? GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )
                    : TextStyle(
                        fontFamily: "SourceSansVariable",
                        fontSize: 27.04.sp,
                        color: Colors.white,
                      ),
                contentPadding: _isAppBarTransparent
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(
                        left: 30.w,
                        right: 0,
                      ),
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
                    : Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Container(
                          height: 67.h,
                          width: 67.w,
                          margin: EdgeInsets.only(top: 2, bottom: 2, right: 0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 19.8.h, bottom: 17.8.h),
                            child: SvgPicture.asset(
                              "assets/images/Group 287.svg",
                            ),
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
          elevation: 0,
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
              return GestureDetector(
                onTap: () {
                  Get.to(() => ProductDetails1());
                },
                child: Container(
                  height: 300.h,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 592.72.w,
                          height: 259.49.h,
                          decoration: BoxDecoration(
                            color: Color(0XFFFF5C63),
                            borderRadius: BorderRadius.circular(68.02.r),
                          ),
                          margin: EdgeInsets.only(left: 60.3.w, right: 58.w),
                          padding: EdgeInsets.only(top: 33.5.h, left: 58.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New Season\nEssentials.",
                                style: TextStyle(
                                  fontFamily: "SourceSansVariable",
                                  fontSize: 47.94.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2,
                                ),
                              ),
                              SizedBox(
                                height: 16.1.h,
                              ),
                              Container(
                                width: 134.28.w,
                                height: 47.05.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23.53.r),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Shop Now",
                                    style: TextStyle(
                                      fontFamily: "SourceSansVariable",
                                      fontSize: 21.79.sp,
                                      color: Color(0XFF606060),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -25.h,
                        right: -60.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/Asset 1.png",
                              height: 338.h,
                              width: 507.w,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                height: 491.39.h,
                margin: EdgeInsets.only(left: 63.8.w),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => ProductDetails());
                      },
                      child: Container(
                        height: 491.39.h,
                        margin: EdgeInsets.only(right: 28.5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 366.49.h,
                              width: 277.48.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(57.51.r),
                                color: Color(0XFFEAEBED),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    index.isOdd
                                        ? "assets/images/Group 360.png"
                                        : "assets/images/Group 356.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    top: 24.9.h,
                                    left: 22.7.w,
                                    child: Container(
                                      height: 54.h,
                                      width: 54.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index.isOdd
                                            ? Color(0XFFFF5C63)
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 12.3,
                                          color: index.isOdd
                                              ? Colors.white
                                              : Color(0XFFFF5C63),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14.7.h,
                            ),
                            Text(
                              "Zara - \nT-Shirt",
                              style: TextStyle(
                                fontFamily: "SourceSansVariable",
                                fontSize: 25.15.sp,
                                color: Color(0XFF4D4D4D),
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                              height: 9.2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "KWD 20.300",
                                  style: TextStyle(
                                    fontFamily: "SourceSansVariable",
                                    fontSize: 25.15.sp,
                                    color: Color(0XFF4D4D4D),
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 71.5.w,
                                ),
                                Image.asset(
                                  "assets/images/Group 362.png",
                                  height: 20.h,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 27.6.h,
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 491.39.h,
                margin: EdgeInsets.only(left: 63.8.w),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => ProductDetails());
                      },
                      child: Container(
                        height: 491.39.h,
                        margin: EdgeInsets.only(right: 28.5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 366.49.h,
                              width: 277.48.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(57.51.r),
                                color: Color(0XFFEAEBED),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    index.isOdd
                                        ? "assets/images/Group 360.png"
                                        : "assets/images/Group 356.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    top: 24.9.h,
                                    left: 22.7.w,
                                    child: Container(
                                      height: 54.h,
                                      width: 54.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index.isOdd
                                            ? Color(0XFFFF5C63)
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 12.3,
                                          color: index.isOdd
                                              ? Colors.white
                                              : Color(0XFFFF5C63),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14.7.h,
                            ),
                            Text(
                              "Zara - \nT-Shirt",
                              style: TextStyle(
                                fontFamily: "SourceSansVariable",
                                fontSize: 25.15.sp,
                                color: Color(0XFF4D4D4D),
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                              height: 9.2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "KWD 20.300",
                                  style: TextStyle(
                                    fontFamily: "SourceSansVariable",
                                    fontSize: 25.15.sp,
                                    color: Color(0XFF4D4D4D),
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 71.5.w,
                                ),
                                Image.asset(
                                  "assets/images/Group 362.png",
                                  height: 20.h,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 100.h,
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
