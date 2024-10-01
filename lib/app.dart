import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_application_2/utils/theme/theme.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MMAppTheme.lightTheme,
        darkTheme: MMAppTheme.darkTheme,
        home: OnBoardingScreen());
  }
}
