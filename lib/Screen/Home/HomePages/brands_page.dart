import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/HomePages/products_page.dart';
import 'package:hi_mama/Screen/Home/HomePages/products_page_details.dart';

class BrandsPage extends StatefulWidget {
  const BrandsPage({
    super.key,
    required ScrollController scrollController,
    required bool isAppBarTransparent,
  })  : _scrollController = scrollController,
        _isAppBarTransparent = isAppBarTransparent;

  final ScrollController _scrollController;
  final bool _isAppBarTransparent;

  @override
  State<BrandsPage> createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          controller: widget._scrollController,
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
                      borderRadius: BorderRadius.circular(
                          widget._isAppBarTransparent ? 60.r : 70.r),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: widget._isAppBarTransparent
                        ? Color(0XFFFFA7A9)
                        : Color(0XFFD8D8D8).withOpacity(.41),
                    filled: true,
                    prefixIcon: widget._isAppBarTransparent
                        ? Padding(
                            padding:
                                EdgeInsets.only(bottom: 21.8.h, top: 25.8.h),
                            child:
                                SvgPicture.asset("assets/images/Group 441.svg"),
                          )
                        : null,
                    hintText: 'Search',
                    hintStyle: widget._isAppBarTransparent
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
                    contentPadding: widget._isAppBarTransparent
                        ? EdgeInsets.all(0)
                        : EdgeInsets.only(
                            left: 30.w,
                            right: 0,
                          ),
                    suffixIcon: widget._isAppBarTransparent
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
                              margin:
                                  EdgeInsets.only(top: 2, bottom: 2, right: 0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 19.8.h, bottom: 17.8.h),
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
              backgroundColor: widget._isAppBarTransparent
                  ? Color(0XFFFF7B80)
                  : Colors.white,
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
                    height: 127.5.h,
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
                          image: AssetImage("assets/images/Group 429.png"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ADIDAS",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 46.24.sp,
                              color: Color(0XFF666666),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, conse",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Color(0XFF666666),
                            ),
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
                    height: 35.4.h,
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
                          image: AssetImage("assets/images/Group 432.png"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ZARA",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 46.24.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, conse",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
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
                    height: 35.4.h,
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
                          image: AssetImage("assets/images/Group 435.png"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MOTHER CARE",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 46.24.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, conse",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
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
                    height: 35.4.h,
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
                          image: AssetImage("assets/images/Group 435.png"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MOTHER CARE",
                            style: TextStyle(
                              fontFamily: "SourceSansVariable",
                              fontSize: 46.24.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, conse",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
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
                    height: 35.4.h,
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
                          image: AssetImage("assets/images/Group 435.png"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MOTHER CARE",
                            style: GoogleFonts.poppins(
                              fontSize: 46.24.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, conse",
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
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
        ),
        Positioned(
          top: 140.h,
          child: Container(
            width: 625.59.w,
            height: 60.h,
            margin: EdgeInsets.symmetric(horizontal: 42.7.w),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              indicator: BoxDecoration(
                color: Color(0XFFFF5C63),
                borderRadius: BorderRadius.circular(26.61.r),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Color(0XFFA5A5A5),
              unselectedLabelStyle: GoogleFonts.tajawal(
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
              ),
              labelPadding: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              tabs: [
                Container(
                  width: 194.58.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.61.r),
                    color: _currentIndex == 0 ? null : Colors.white,
                  ),
                  padding: EdgeInsets.only(
                    top: _currentIndex == 0 ? 5.h : 10.h,
                  ),
                  child: Tab(
                    text: 'New born',
                  ),
                ),
                Container(
                  width: 194.58.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.61.r),
                    color: _currentIndex == 1 ? null : Colors.white,
                  ),
                  padding:
                      EdgeInsets.only(top: _currentIndex == 1 ? 5.h : 10.h),
                  child: Tab(
                    text: 'Boys',
                  ),
                ),
                Container(
                  width: 194.58.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.61.r),
                    color: _currentIndex == 2 ? null : Colors.white,
                  ),
                  padding:
                      EdgeInsets.only(top: _currentIndex == 2 ? 5.h : 10.h),
                  child: Tab(
                    text: 'Girles',
                  ),
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
