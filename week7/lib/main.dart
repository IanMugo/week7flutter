import 'package:flutter/material.dart';
import '/pages/login.dart';         // Your login page
import '/pages/sendmoney.dart';   // The send money page
import '/pages/register.dart';     // Your registration page
import '/pages/dashboard.dart';     // The dashboard page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send Money App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color for the app
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),        // Login page
        '/dashboard': (context) => DashboardPage(), // Dashboard page
        '/sendMoney': (context) => const SendMoneyPage(), // Send money page
        '/register': (context) => RegisterPage(),   // Registration page
      },
    );
  }
}
