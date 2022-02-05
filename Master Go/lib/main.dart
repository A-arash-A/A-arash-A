import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:master_go/screens/authentication/login.dart';
import 'package:master_go/screens/authentication/register.dart';
import 'package:master_go/screens/profile/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.transparent,
      title: 'Master Go (template)',
      debugShowCheckedModeBanner: false,
      routes: {
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/profile': (context) => const Profile(),
      },
      initialRoute: '/register',
    );
  }
}
