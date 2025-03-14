import 'package:flutter/material.dart';

import 'package:studyapp/codes/courses.dart';
import 'package:studyapp/codes/loginpage.dart';
import 'package:studyapp/codes/store.dart';


class Navigation1 extends StatefulWidget {
  const Navigation1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation1> {
  // List of pages for navigation
  final List<Widget> _pages = [
    
    const Courses1(),
    const Store1(),
    const login(), // Capitalized to follow Dart naming conventions
  ];

  int currentPage = 0; // Corrected variable name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage, // Ensure current index is set
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        iconSize: 28,
        selectedItemColor: const Color.fromARGB(255, 73, 25, 196),
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
