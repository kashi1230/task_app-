import 'package:flutter/material.dart';
import 'package:task_app/Employee/Activites.dart';
import 'package:task_app/Employee/Projects.dart';
import 'package:task_app/Employee/mainscreen.dart';
import 'package:task_app/Employee/wellscreen.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;
  int buildindex =0;

  final List _pages = <Widget>[
    MainScreen(),
    const Projects(),
    // AddProjects(),
    const Activites(),
    const WellScreen()
  ];


  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.file_copy_sharp), label: "About"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Activity"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notification_add_outlined), label: "Notification"),
        ],
      ),
    );
  }
  Widget buildIcon({required Icon icon,required int index}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: icon,
    );
  }
}