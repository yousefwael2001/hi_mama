import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'products_page_details.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
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
                height: 38.5.h,
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
                child: Image.asset("assets/images/Group 136.png"),
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 39.1.h,
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
                  Get.to(() => ProductsPageDetails());
                },
                child: Container(
                  height: 251.1.h,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 105.png"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(31.41.r),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(158, 158, 158, 1)
                              .withOpacity(.6),
                          blurRadius: 12.r,
                          offset: Offset(-6, 6))
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "SHOES",
                      style: TextStyle(
                        fontFamily: "SourceSansVariable",
                        fontSize: 46.24.sp,
                        color: Colors.white,
                      ),
                    ),
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
                height: 22.9.h,
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 22.9.h,
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
                  Get.to(() => ProductsPageDetails());
                },
                child: Container(
                  height: 251.1.h,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 108.png"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(31.41.r),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(158, 158, 158, 1)
                              .withOpacity(.6),
                          blurRadius: 12.r,
                          offset: Offset(-6, 6))
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "GLASSES",
                      style: GoogleFonts.poppins(
                        fontSize: 46.24.sp,
                        color: Colors.white,
                      ),
                    ),
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
                height: 22.9.h,
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
                  Get.to(() => ProductsPageDetails());
                },
                child: Container(
                  height: 251.1.h,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 138.png"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(31.41.r),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(158, 158, 158, 1)
                              .withOpacity(.6),
                          blurRadius: 12.r,
                          offset: Offset(-6, 6))
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "ACCESSORIES",
                      style: GoogleFonts.poppins(
                        fontSize: 46.24.sp,
                        color: Colors.white,
                      ),
                    ),
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
                height: 170.h,
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
