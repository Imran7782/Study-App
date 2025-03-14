import 'package:flutter/material.dart';


import 'package:studyapp/codes/courses.dart';
import 'package:studyapp/codes/loginpage.dart';
import 'package:studyapp/codes/store.dart';
import 'package:studyapp/codes/xanw.dart';

// Homepage widget
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List of pages for navigation
  final List<Widget> _pages = [
    const xanw1(),
   const Courses1(),  // Ensure these widgets are defined
    const Store1(),
    const login(), // Ensure this is capitalized and correct
  ];

  int currentPage = 0; // Current index for navigation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage, // Display the current page based on index
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage, // Set the currently selected index
        onTap: (value) {
          setState(() {
            currentPage = value; // Update the current page index
          });
        },
        iconSize: 28,
        selectedItemColor: const Color.fromARGB(255, 73, 25, 196),
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.wrap_text_outlined), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
