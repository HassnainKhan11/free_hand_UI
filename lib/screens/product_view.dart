import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/constants.dart';

import '../utils/product_view_tag.dart';
import '../utils/range_slider.dart';
import '../utils/timeslot_widget.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  RangeValues rangeValues = const RangeValues(200, 1200);

  final bool _value = true;
  bool firstTagSelected = false;
  bool secondTagSelected = false;

  bool thirdTagSelected = false;
  bool fourthTagSelected = false;
  bool fifthTagSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 199, 199, 199),
        body: SliderTheme(
          data: const SliderThemeData(
            inactiveTrackColor: Color.fromARGB(255, 220, 220, 220),
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 216, 216, 216),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(53, 95, 95, 95),
                                offset: Offset.zero,
                                spreadRadius: 4,
                                blurRadius: 14,
                              )
                            ]),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Color.fromARGB(255, 61, 61, 61),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .36,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('${AppImages.imagePath}maid_2.png'))),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 5,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 205, 205, 205),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Row(
                              children: const [
                                Text(
                                  'Julie Iskandar',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: AppColors.headingColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.verified_rounded,
                                  color: AppColors.secondaryColor,
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: RatingRowWidget(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Row(
                              children: const [
                                ProductViewTag(
                                  text: 'Home Clean',
                                ),
                                ProductViewTag(
                                  text: 'Car Clean',
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              'House Size',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          RangeSliderWidget(rangeValues: rangeValues),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              'Cleaning Time',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      firstTagSelected = !firstTagSelected;
                                      secondTagSelected = false;
                                      thirdTagSelected = false;
                                      fourthTagSelected = false;
                                      fifthTagSelected = false;
                                    });
                                  },
                                  child: TimeSlotWidget(
                                    selectedTag: firstTagSelected,
                                    text: '07:00',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      secondTagSelected = !secondTagSelected;
                                      firstTagSelected = false;
                                      thirdTagSelected = false;
                                      fourthTagSelected = false;
                                      fifthTagSelected = false;
                                    });
                                  },
                                  child: TimeSlotWidget(
                                    selectedTag: secondTagSelected,
                                    text: '08:00',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      thirdTagSelected = !thirdTagSelected;
                                      firstTagSelected = false;
                                      secondTagSelected = false;
                                      fourthTagSelected = false;
                                      fifthTagSelected = false;
                                    });
                                  },
                                  child: TimeSlotWidget(
                                    selectedTag: thirdTagSelected,
                                    text: '09:00',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fourthTagSelected = !fourthTagSelected;
                                      firstTagSelected = false;
                                      thirdTagSelected = false;
                                      secondTagSelected = false;
                                      fifthTagSelected = false;
                                    });
                                  },
                                  child: TimeSlotWidget(
                                    selectedTag: fourthTagSelected,
                                    text: '10:00',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fifthTagSelected = !fifthTagSelected;
                                      firstTagSelected = false;
                                      thirdTagSelected = false;
                                      secondTagSelected = false;
                                      fourthTagSelected = false;
                                    });
                                  },
                                  child: TimeSlotWidget(
                                    selectedTag: fifthTagSelected,
                                    text: '11:00',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                color: Color.fromARGB(88, 161, 161, 161),
                blurRadius: 25,
                spreadRadius: 8,
              )
            ],
            color: AppColors.primaryColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          height: MediaQuery.of(context).size.height * 0.10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    '\$60.00',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '/Day',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: MediaQuery.of(context).size.width * 0.36,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
