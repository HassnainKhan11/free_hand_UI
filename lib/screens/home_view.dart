import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/constants.dart';
import 'package:free_hand_ui/models/service_model.dart';
import 'package:free_hand_ui/screens/product_view.dart';
import 'package:free_hand_ui/utils/searchbar_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../utils/discount_card_widget.dart';

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
              Column(
                children: <Widget>[
                  ...services.map((e) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      padding: const EdgeInsets.all(12),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 233, 233),
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  AppImages.imagePath +
                                      e.profile_Url.toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                e.employeeName.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                e.catagoryName.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.headingColor),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                e.payment.toString(),
                                style: const TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    e.rating.toString(),
                                    style: const TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeRowWidget extends StatelessWidget {
  const HomeRowWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 223, 223, 223),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
        ),
      ),
    );
  }
}
