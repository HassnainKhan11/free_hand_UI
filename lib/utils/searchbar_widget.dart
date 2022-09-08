import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(57, 186, 186, 186),
              blurRadius: 10,
              offset: Offset.fromDirection(1.0),
              spreadRadius: .3,
            )
          ]),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.textColor,
              ),
              suffixIcon: Icon(
                Icons.filter_list_outlined,
                color: AppColors.textColor,
              ),
              border: InputBorder.none,
              hintText: 'Search for a service...',
              hintStyle: TextStyle(
                color: AppColors.textColor,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0))),
        ),
      ),
    );
  }
}
