import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/Screens/home_page.dart';
import 'package:machine_test/Screens/onboard_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: OnBoardPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 23,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle:
            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w600),
        selectedLabelStyle:
            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w600),
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Moments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
