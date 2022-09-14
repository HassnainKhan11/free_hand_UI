import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/service_model.dart';

Column HomeListViewWidget(BuildContext context) {
  return Column(
    children: <Widget>[
      ...services.map((e) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                      AppImages.imagePath + e.profile_Url.toString(),
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
  );
}
