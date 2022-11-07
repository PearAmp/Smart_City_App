import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:love_pat/pags/blockcontent.dart';
import 'package:love_pat/pags/firstpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    Text(
      'Index 3: delete',
      style: optionStyle,
    ),
    BlockContent(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: HexColor('#6E9BC6'),
            icon: Icon(Icons.list_alt, color: Colors.white),
            label: 'Place',
          ),
          BottomNavigationBarItem(
            backgroundColor: HexColor('#6E9BC6'),
            icon: Icon(Icons.cloud_circle, color: Colors.white),
            label: 'weather',
          ),
          BottomNavigationBarItem(
            backgroundColor: HexColor('#6E9BC6'),
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: HexColor('#6E9BC6'),
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
