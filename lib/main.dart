import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/my_routes.dart';
import 'package:free_hand_ui/constants/routes_names.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: RoutesNames.onBoardingRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
