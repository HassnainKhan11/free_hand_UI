import 'package:flutter/cupertino.dart';

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
