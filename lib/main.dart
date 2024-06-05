import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/contact_us.dart';
import 'package:radiant_residencies_app/services.dart';
import 'package:radiant_residencies_app/welcome_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAuiDWAhkT25gKOBORJm-diQ2NKW3YdXwc",
            appId: "1:702000616537:web:0a2184a802ed3e7a134d48",
            messagingSenderId: "702000616537",
            projectId: "radiant-residencies-330a2"));
  }

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ServiceScreen(),
    );
  }
}
