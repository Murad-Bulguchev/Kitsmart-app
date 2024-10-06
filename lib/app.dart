import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kitsmart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:kitsmart/utils/theme/theme.dart';

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
        home: const OnBoardingScreen());
  }
}
