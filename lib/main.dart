import 'package:flutter/material.dart';
import 'package:user_authentication/screens/home_page.dart';
import 'package:user_authentication/screens/login_page.dart';
import 'package:user_authentication/screens/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_authentication/screens/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isRegister = prefs.getBool('isRegister') ?? false;
  bool? isLogedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Welcome_page',
      // initialRoute: (isRegister == false)
      //     ? 'Register_page'
      //     : (isLogedIn == true)
      //         ? 'Welcome_page'
      //         : 'Login_page',
      routes: {
        '/': (context) => const HomePage(),
        'Login_page': (context) => const LoginPage(),
        'Register_page': (context) => const RegisterPage(),
        'Welcome_page': (context) => const WelcomePage(),
      },
    ),
  );
}
