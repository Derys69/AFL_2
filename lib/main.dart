import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'about_page.dart';
import 'contact_page.dart';
import 'home_page.dart';
import 'about_page_desktop.dart';
import 'contact_page_desktop.dart';
import 'home_page_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFD2B48C), // Warna latar belakang
      ),
      home: kIsWeb ? const WebHomePage() : const MyAndroidPage(),
    );
  }
}
// Class untuk menampilkan app dalam mode smartphone
class MyAndroidPage extends StatelessWidget {
  const MyAndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade700,
          title: const Text(
            'My Portfolio',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white, 
            labelColor: Colors.white, // Teks aktif
            unselectedLabelColor: Colors.grey, // Teks non-aktif
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'About Me'),
              Tab(text: 'Contact'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            AboutPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}

// Class untuk menampilkan aplikasi dalam desktop mode
class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87, 
          title: const Text(
            'My Portfolio',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white, 
            labelColor: Colors.white, 
            unselectedLabelColor: Colors.grey, 
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'About Me'),
              Tab(text: 'Contact'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePageDesktop(),
            AboutPageDesktop(),
            ContactPageDesktop(),
          ],
        ),
      ),
    );
  }
}
