import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';

class DiscountCardWidget extends StatelessWidget {
  const DiscountCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(76, 78, 19, 241),
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset.zero),
          ],
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 19, 241),
              Color.fromARGB(255, 162, 142, 250)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 39, 76, 238)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Get 40% Off',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Today is a special day',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Get discount for every order,\nonly valid for today.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 220, 218, 218),
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 10),
            height: 180,
            width: 140,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                '${AppImages.imagePath}maid_1.png',
              ),
            )),
          ),
        ],
      ),
    );
  }
}
