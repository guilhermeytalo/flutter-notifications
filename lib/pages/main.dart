import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notificationapppock/api/firebase_api.dart';
import 'package:notificationapppock/firebase_options.dart';
import 'package:notificationapppock/pages/notification_page.dart';
import 'package:notificationapppock/pages/home_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen': (context) => NotificationPage(),
      },
    );
  }
}
