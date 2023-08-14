import 'package:appdesign/blank.dart';
import 'package:appdesign/homepage.dart';
import 'package:appdesign/next_page.dart';
import 'package:appdesign/shoes.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
   late int _selectedIndex = 0;
  final _screenList = [
    const MyHomePage(),
    const NextScreen(),
    const ShoesScreen(),
    const Blank(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: _screenList[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex=index;
            });
          },
          items: [
            _getNavItemWidget(const Icon(Icons.home_filled), 'Home'),

            _getNavItemWidget(const Icon(Icons.window), 'Window'),
            _getNavItemWidget(const Icon(Icons.message_outlined), "Message"),
            _getNavItemWidget(const Icon(Icons.settings), "Settings"),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _getNavItemWidget(Icon icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
