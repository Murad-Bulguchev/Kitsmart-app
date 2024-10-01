import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_application_2/utils/constants/colors.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // MMColors.linerGradient;

  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}

// MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'phone',
//     routes: {
//       'phone': (context) => MyPhone(),
//       'otp': (context) => MyOpt(),
//     },
//   )
