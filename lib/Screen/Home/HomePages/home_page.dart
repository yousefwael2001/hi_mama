import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/ProductDetails/product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
                height: 43.h,
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.5.w),
                child: Stack(
                  children: [
                    Image.asset("assets/images/Group 443.png"),
                    Positioned(
                      bottom: 30.6.h,
                      left: 36.3.w,
                      child: Container(
                        width: 135.w,
                        height: 47.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(23.53.r),
                        ),
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 21.79.sp,
                              color: Color(0XFF606060),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 27.3.h,
                      left: 36.3.w,
                      child: Text(
                        "RANDOM ADS BANNER",
                        style: TextStyle(
                          fontFamily: "SourceSansVariable",
                          fontSize: 25.26.sp,
                          color: Color(0XFFECECEC),
                        ),
                      ),
                    )
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
              return SizedBox(
                height: 24.2.h,
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
                    width: 25.5.w,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 38.1.sp,
                      color: Color(0XFF4D4D4D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 20.sp,
                      color: Color(0XFFFF7B80),
                    ),
                  ),
                  SizedBox(
                    width: 25.5.w,
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
                height: 19.7.h,
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
                  Get.to(() => ProductDetails());
                },
                child: Container(
                  height: 251.1.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.41.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(158, 158, 158, 1)
                              .withOpacity(.6),
                          blurRadius: 12.r,
                          offset: Offset(-6, 6))
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25.5.w),
                  padding: EdgeInsets.only(
                      left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Group 454.png"),
                      SizedBox(
                        width: 29.8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Adidas - Sheo",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 25.15.sp,
                              color: Color(0XFF4D4D4D),
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                          Text(
                            "KWD 45.00",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 15.17.sp,
                              color: Color(0XFF878787),
                              fontWeight: FontWeight.w600,
                              height: -.5,
                            ),
                          ),
                          SizedBox(
                            width: 378.48.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna ",
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: Color(0XFF878787),
                              ),
                            ),
                          ),
                          Text(
                            "KWD 45.00",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 25.15.sp,
                              color: Color(0XFF4D4D4D),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/Path 253.svg",
                            width: 25.97.w,
                            height: 36.27.h,
                          ),
                          SvgPicture.asset(
                            "assets/images/Group 457.svg",
                            width: 25.97.w,
                            height: 36.27.h,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30.8.w,
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
                height: 24.2.h,
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
                    width: 25.5.w,
                  ),
                  Text(
                    "Recomend",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 38.1.sp,
                      color: Color(0XFF4D4D4D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 20.sp,
                      color: Color(0XFFFF7B80),
                    ),
                  ),
                  SizedBox(
                    width: 25.5.w,
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
                height: 19.7.h,
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
                  Get.to(() => ProductDetails());
                },
                child: Container(
                  height: 203.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.41.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(158, 158, 158, 1)
                              .withOpacity(.6),
                          blurRadius: 12.r,
                          offset: Offset(-6, 6))
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25.5.w),
                  padding: EdgeInsets.only(
                      left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Group 270.png"),
                      SizedBox(
                        width: 29.8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Adidas - Shirt",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 25.15.sp,
                              color: Color(0XFF4D4D4D),
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                          Text(
                            "KWD 45.00",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 15.17.sp,
                              color: Color(0XFF878787),
                              fontWeight: FontWeight.w600,
                              height: .3,
                            ),
                          ),
                          SizedBox(
                            width: 378.48.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna ",
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                color: Color(0XFF878787),
                              ),
                            ),
                          ),
                          Text(
                            "KWD 45.00",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 25.15.sp,
                              color: Color(0XFF4D4D4D),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/Path 145.svg",
                            width: 25.97.w,
                            height: 36.27.h,
                          ),
                          SvgPicture.asset(
                            "assets/images/Group 274.svg",
                            width: 25.97.w,
                            height: 36.27.h,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30.8.w,
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
                height: 24.2.h,
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
                    width: 25.5.w,
                  ),
                  Text(
                    "Trends",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 38.1.sp,
                      color: Color(0XFF4D4D4D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "SourceSansVariable",
                      fontSize: 20.sp,
                      color: Color(0XFFFF7B80),
                    ),
                  ),
                  SizedBox(
                    width: 25.5.w,
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
                height: 19.7.h,
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
                  Get.to(() => ProductDetails());
                },
                child: Container(
                  height: 180.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.41.r),
                    color: Colors.transparent,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25.5.w),
                  padding: EdgeInsets.only(
                      left: 13.4.w, top: 14.5.h, bottom: 14.5.h),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Group 258.png"),
                      SizedBox(
                        width: 29.8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Share Your Love! ",
                            style: GoogleFonts.poppins(
                              fontSize: 26.84.sp,
                              color: Color(0XFFFF7B80),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 423.12.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna ",
                              style: GoogleFonts.poppins(
                                fontSize: 15.17.sp,
                                color: Color(0XFF878787),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/Path 143.svg",
                                width: 24.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "4.4",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.26.sp,
                                  color: Color(0XFFFF7B80),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                height: 136.4.h,
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
