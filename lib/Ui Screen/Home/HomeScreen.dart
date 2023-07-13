import 'package:flutter/material.dart';
import 'package:nuntium/Const/const.dart';
import '../Book Mark/book_mark.dart';
import '../DashBoard/dash_board.dart';
import '../Profile/profile.dart';
import 'Home.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _currentIndex=0;
  final _pages=[
    const Home(),
    const DashBoard(),
      FavoritePage(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey,
        fixedColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_rounded),label: 'DashBoard'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_rounded),label: 'BookMark'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
