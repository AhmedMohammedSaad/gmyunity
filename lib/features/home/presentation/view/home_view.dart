import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymumity/core/theme/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Home Feed', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Explore', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Add Workout', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Documents', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Profile', style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.85),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(0, 'assets/svgs/nav_bar_icons/home.svg'),
                _buildNavItem(1, 'assets/svgs/nav_bar_icons/navBar_search.svg'),
                _buildAddButton(2, 'assets/svgs/nav_bar_icons/navBaradd.svg'),
                _buildNavItem(3, 'assets/svgs/nav_bar_icons/nav_doc.svg'),
                _buildNavItem(4, 'assets/svgs/nav_bar_icons/person.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.primaryRedGym : Colors.white.withOpacity(0.6),
          BlendMode.srcIn,
        ),
        width: 30.w,
        height: 30.w,
      ),
    );
  }

  Widget _buildAddButton(int index, String iconPath) {
     return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppColors.primaryRedGym,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryRedGym.withOpacity(0.3),
              blurRadius: 15,
              spreadRadius: 2,
            ),
          ],
        ),
        child: SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
          width: 30.w,
          height: 30.w,
        ),
      ),
    );
  }
}
