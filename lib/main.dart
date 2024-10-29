import 'package:flutter/material.dart';
import 'package:madecahya_responsi/screens/account_screen.dart';
import 'package:madecahya_responsi/screens/kategori_screen.dart';
import 'package:madecahya_responsi/screens/manage_account_screen.dart';
import 'package:madecahya_responsi/screens/search_screen.dart';
import 'package:madecahya_responsi/screens/splash_screen.dart';
import 'package:madecahya_responsi/screens/register_screen.dart';
import 'package:madecahya_responsi/screens/login_screen.dart';
import 'package:madecahya_responsi/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsi 2024',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        // '/akun': (context) => AccountScreen(),
        '/kategori': (context) => KategoriScreen(),
        '/account': (context) => AccountScreen(),
        '/search': (context) => SearchScreen(),
        '/manage_account': (context) => ManageAccountScreen(),
      },
    );
  }
}
