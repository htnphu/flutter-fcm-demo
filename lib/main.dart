import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:push_notification/api/firebase_api.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
