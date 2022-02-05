import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelbook/screens/detail_sheet.dart';
import 'package:hotelbook/screens/home.dart';
import 'package:hotelbook/screens/login.dart';
import 'package:hotelbook/screens/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Book',
      color: Colors.transparent,
      routes: {
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/detail_sheet': (context) => const DetailSheet(),
      },
      initialRoute: '/login',
    );
  }
}
