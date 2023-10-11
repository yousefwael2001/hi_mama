import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_mama/Screen/Home/HomePages/categories_page.dart';

import 'Cart/lobby.dart';
import 'HomePages/brands_page.dart';
import 'HomePages/fav_page.dart';
import 'HomePages/home_page.dart';
import 'HomePages/products_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;
  late PageController _pageController;
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarTransparent = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController.addListener(() {
      setState(() {
        _isAppBarTransparent =
            _scrollController.offset < 100.h; // You can adjust the threshold
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String title() {
    if (_selectedIndex == 0) {
      return "Home Page";
    } else if (_selectedIndex == 1) {
      return "Brands";
    } else if (_selectedIndex == 2) {
      return "Categories";
    } else if (_selectedIndex == 3) {
      return "Lobby";
    } else {
      return "Products";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        extendBody: true,
        backgroundColor: Color(0XFFECECEC),
        appBar: AppBar(
          title: Text(
            title(),
            style: GoogleFonts.poppins(
              fontSize: 27.49.sp,
              color: _isAppBarTransparent ? Colors.white : Color(0XFFFF7B80),
            ),
          ),
          centerTitle: true,
          backgroundColor:
              _isAppBarTransparent ? Color(0XFFFF7B80) : Colors.white,
          elevation: 0,
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: SvgPicture.asset(
                "assets/images/Group 464.svg",
                width: 35.61.w,
                height: 32.75.h,
                color: _isAppBarTransparent ? null : Color(0XFFFF7B80),
              ),
            ),
            SizedBox(
              width: 31.3.w,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => LobbyPage());
              },
              child: SvgPicture.asset(
                "assets/images/Group 462.svg",
                width: 39.67.w,
                height: 35.26.h,
                color: _isAppBarTransparent ? null : Color(0XFFFF7B80),
              ),
            ),
            SizedBox(
              width: 39.3.w,
            )
          ],
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: SizedBox(
              height: 15.h,
              width: 15.w,
              child: Image.asset(
                "assets/images/Group 284.png",
                width: 15.w,
                height: 15.h,
                color: _isAppBarTransparent ? Colors.white : Color(0XFFFF7B80),
              ),
            ),
          ),
          toolbarHeight: _isAppBarTransparent ? 190.h : 90.h,
        ),
        drawer: SafeArea(
          child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.r),
                bottomRight: Radius.circular(40.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 73.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 105.9.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                      icon: Icon(
                        Icons.close,
                        weight: 3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.8.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Group 46.png",
                        height: 116.h,
                        width: 116.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 26.5.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ahmed Khatib",
                            style: GoogleFonts.tajawal(
                              fontSize: 35.64.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, ",
                            style: GoogleFonts.tajawal(
                              fontSize: 19.sp,
                              color: Color(0XFFA6A6A6),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 190.6.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.2.h, bottom: 14.1.h),
                          child: SvgPicture.asset(
                            "assets/images/Path 16.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 16.5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Home",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 63.4.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      // color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.2.h, bottom: 14.1.h),
                          child: SvgPicture.asset(
                            "assets/images/Path 25.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 16.5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "New collection",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 75.5.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      // color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.2.h,
                            bottom: 14.1.h,
                          ),
                          child: SvgPicture.asset(
                            "assets/images/Group 50.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 17.5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Gift Box",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 75.5.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      // color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 16.2.h, bottom: 14.1.h, right: 10.w),
                          child: SvgPicture.asset(
                            "assets/images/Group 48.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Language",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 75.5.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      // color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.2.h, bottom: 14.1.h),
                          child: SvgPicture.asset(
                            "assets/images/Group 47.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 17.5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Notification",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 79.h,
                  ),
                  Container(
                    height: 53.38.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26.69.r),
                        bottomLeft: Radius.circular(26.69.r),
                      ),
                      // color: Color(0XFFECECEC),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17.2.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.2.h, bottom: 14.1.h),
                          child: SvgPicture.asset(
                            "assets/images/Path 18.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: 18.5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "Setting",
                            style: GoogleFonts.tajawal(
                              fontSize: 28.46.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: _selectedIndex == 0
            ? HomePage(
                scrollController: _scrollController,
                isAppBarTransparent: _isAppBarTransparent)
            : _selectedIndex == 1
                ? BrandsPage(
                    scrollController: _scrollController,
                    isAppBarTransparent: _isAppBarTransparent)
                : _selectedIndex == 2
                    ? CategoriesPage(
                        scrollController: _scrollController,
                        isAppBarTransparent: _isAppBarTransparent)
                    : _selectedIndex == 3
                        ? FavPage(
                            scrollController: _scrollController,
                            isAppBarTransparent: _isAppBarTransparent)
                        : ProductsPage(
                            scrollController: _scrollController,
                            isAppBarTransparent: _isAppBarTransparent),
        bottomNavigationBar: Container(
          height: 147.32.h,
          margin: EdgeInsets.only(bottom: 39.h, right: 44.2.w, left: 44.2.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(69.07.r),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 94.7.w,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(69.07.r),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              onTap: _onItemTapped,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 20,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    "assets/images/Path 262.svg",
                    height: 37.8.h,
                    width: 41.23.w,
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == 0
                        ? Color(0XFFFF7B80)
                        : Color(0XFFA6A6A6),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    "assets/images/Group 466.svg",
                    height: 36.13.h,
                    width: 32.01.w,
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == 1 ? Color(0XFFFF7B80) : null,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    "assets/images/Group 468.svg",
                    height: 33.29.h,
                    width: 33.92.w,
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == 2 ? Color(0XFFFF7B80) : null,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    "assets/images/Group 465.svg",
                    height: 33.29.h,
                    width: 33.92.w,
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == 3 ? Color(0XFFFF7B80) : null,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    "assets/images/Path 263.svg",
                    height: 33.29.h,
                    width: 33.92.w,
                    fit: BoxFit.scaleDown,
                    color: _selectedIndex == 4 ? Color(0XFFFF7B80) : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
