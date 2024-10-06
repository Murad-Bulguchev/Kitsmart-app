import 'package:flutter/material.dart';
import 'package:kitsmart/common/styles/spacing_styles.dart';
import 'package:kitsmart/common/widgets/login_signup/form_divider.dart';
import 'package:kitsmart/common/widgets/login_signup/social_buttons.dart';
import 'package:kitsmart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:kitsmart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:kitsmart/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: MMSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            MMLoginHeader(),
            MMLoginForm(),
            MMFormDivider(),
            SizedBox(height: MMSizes.spaceBtwSections),
            MMSocialButtons(),
          ],
        ),
      )),
    );
  }
}

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white, // Set background color here
//       ),
//       initialRoute: 'phone',
//       routes: {
//         'phone': (context) => MyPhone(),
//         'otp': (context) => MyOpt(),
//       },
//     );
//   }
// }
