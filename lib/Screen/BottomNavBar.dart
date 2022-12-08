import 'package:flutter/material.dart';
import 'package:trekmate/Screen/ChatScreen.dart';
import 'package:trekmate/Screen/HomeScreen.dart';
import 'package:trekmate/Screen/ProfileScreen.dart';
import 'package:trekmate/Screen/SearchScreen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _SelectItem = 3;

  static final List<Widget> _WidgetItem = <Widget> [
    HomeScreen(),
    SearchScreen(),
    ChatScreen(),
    ProfileScreen()

  ];

  void OntappedItem( int index){
  setState(() {
    _SelectItem = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _WidgetItem[_SelectItem]
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectItem,
        onTap:OntappedItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: const Color(0xFFAA00FF),
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),

        ],
      ),
    );
  }
}
