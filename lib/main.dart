import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_design_dribbble/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter travel app design dribbble',
      home: Scaffold(
        body: const HomePage(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 25.0,
            left: 20,
            right: 20,
          ),
          child: FloatingNavbar(
            onTap: (int val) {
              //returns tab id which is user tapped
              setState(() {
                _currentIndex = val;
              });
            },
            borderRadius: 25,
            currentIndex: _currentIndex,
            selectedBackgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            iconSize: 30,
            padding: const EdgeInsets.symmetric(vertical: 20),
            items: [
              FloatingNavbarItem(
                icon: _currentIndex == 0 ? Icons.home : Icons.home_outlined,
              ),
              FloatingNavbarItem(
                icon: _currentIndex == 1
                    ? Icons.location_pin
                    : Icons.location_on_outlined,
              ),
              FloatingNavbarItem(
                icon:
                    _currentIndex == 2 ? Icons.message : Icons.message_outlined,
              ),
              FloatingNavbarItem(
                icon: _currentIndex == 3 ? Icons.person : Icons.person_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
