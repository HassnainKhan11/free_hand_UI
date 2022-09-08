import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:free_hand_ui/constants/constants.dart';
import 'package:free_hand_ui/screens/chat_view.dart';
import 'package:free_hand_ui/screens/home_view.dart';
import 'package:free_hand_ui/screens/profile_view.dart';
import 'package:free_hand_ui/screens/services_view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

PersistentTabController controller = PersistentTabController(initialIndex: 0);
List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const ServicesView(),
    const ChatView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navbarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        '${AppImages.iconPath}home_icon.svg',
        color: AppColors.secondaryColor,
      ),
      inactiveIcon: SvgPicture.asset(
        '${AppImages.iconPath}home_icon.svg',
        color: AppColors.textColor,
      ),
      title: 'Home',
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        '${AppImages.iconPath}list_icon.svg',
        color: AppColors.secondaryColor,
      ),
      inactiveIcon: SvgPicture.asset(
        '${AppImages.iconPath}list_icon.svg',
        color: AppColors.textColor,
      ),
      title: 'Lists',
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        '${AppImages.iconPath}chat_icon.svg',
        color: AppColors.secondaryColor,
      ),
      inactiveIcon: SvgPicture.asset(
        '${AppImages.iconPath}chat_icon.svg',
        color: AppColors.textColor,
      ),
      title: 'Chat',
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        '${AppImages.iconPath}profile_icon.svg',
        color: AppColors.secondaryColor,
      ),
      inactiveIcon: SvgPicture.asset(
        '${AppImages.iconPath}profile_icon.svg',
        color: AppColors.textColor,
      ),
      title: 'Profile',
    ),
  ];
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navbarItems(),
      navBarHeight: MediaQuery.of(context).size.height * 0.1,
      navBarStyle: NavBarStyle.style12,
    );
  }
}
