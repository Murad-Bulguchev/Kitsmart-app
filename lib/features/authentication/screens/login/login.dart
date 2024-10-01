import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/styles/spacing_styles.dart';
import 'package:flutter_application_2/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_application_2/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_application_2/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_application_2/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_application_2/utils/constants/sizes.dart';

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
