import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/constants.dart';
import 'package:free_hand_ui/screens/product_view.dart';
import 'package:free_hand_ui/utils/searchbar_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../utils/discount_card_widget.dart';
import '../utils/home_listview_widget.dart';
import '../utils/home_row_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String username = 'Mager';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.16,
            leading: const SizedBox(),
            leadingWidth: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, $username! ',
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Which Service\ndo you need?',
                    style: TextStyle(
                        color: AppColors.headingColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 28,
                  color: Color.fromARGB(255, 101, 101, 101),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SearchBarWidget(),
              GestureDetector(
                onTap: () {
                  pushNewScreen(context,
                      screen: const ProductView(), withNavBar: false);
                },
                child: const DiscountCardWidget(),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Our Service',
                      style: TextStyle(
                        color: Color.fromARGB(255, 95, 95, 95),
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HomeRowWidget(
                      text: 'Cleaning',
                    ),
                    HomeRowWidget(
                      text: 'Repairing',
                    ),
                    HomeRowWidget(
                      text: 'Electrical',
                    ),
                    HomeRowWidget(
                      text: 'Electrical',
                    ),
                    HomeRowWidget(
                      text: 'Electrical',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Color.fromARGB(255, 95, 95, 95),
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              HomeListViewWidget(context),
            ],
          ),
        ),
      ),
    );
  }
}
