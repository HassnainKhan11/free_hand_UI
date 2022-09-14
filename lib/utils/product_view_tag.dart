import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ProductViewTag extends StatelessWidget {
  const ProductViewTag({Key? key, required this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color.fromARGB(255, 223, 223, 223),
      ),
      child: Text(
        text.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 104, 104, 104),
          fontSize: 12,
        ),
      ),
    );
  }
}

/// rating row wiget
///

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.star,
              color: AppColors.ratingColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.ratingColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.ratingColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.ratingColor,
            ),
            Icon(
              Icons.star_half,
              color: AppColors.ratingColor,
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        const Text(
          '4.8',
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
