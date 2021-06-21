import 'package:flutter/material.dart';

import '../gallery.dart';
import '../home.dart';
import '../login.dart';
import '../reviews.dart';

class RabioAppBar extends StatefulWidget {
  @override
  _RabioAppBarState createState() => _RabioAppBarState();
}

class _RabioAppBarState extends State<RabioAppBar> {
  int _selectedIndex = 0;
  List _screens = [
    HomePage(),
    GalleryPage(),
    ReviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Rabio',
          style: TextStyle(
            fontFamily: 'Anydore',
            color: Colors.pinkAccent,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.pinkAccent,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            tooltip: 'Log Out',
          ),
        ],
      ),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library_outlined),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reviews),
            label: 'Reviews',
          ),
        ],
        onTap: _onTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black,
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
