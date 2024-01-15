import 'package:flutter/material.dart';
import 'package:task_app/Boss/Activites.dart';
import 'package:task_app/Boss/Navbar/navbar.dart';
import 'package:task_app/Boss/Notification.dart';
import 'package:task_app/Boss/Projects.dart';
import 'package:task_app/Boss/addprojects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final  Pages = <Widget>[
    const HomeScreen(),
    const Projects(),
    const AddProjects(),
    const Activites(),
    const Notificationscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      // body: Pages[index],
      bottomNavigationBar: TabbarMaterialwidget(
        index:index,
        onchangedTab: onChangedTab,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
