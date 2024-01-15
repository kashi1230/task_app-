
import 'package:flutter/material.dart';

class TabbarMaterialwidget extends StatefulWidget {
  final int index ;

  final ValueChanged<int>onchangedTab;

 const  TabbarMaterialwidget({
     super.key,
     required this.index,
   required this.onchangedTab,
   });
  @override
  State<TabbarMaterialwidget> createState() => _TabbarMaterialwidgetState();
}

class _TabbarMaterialwidgetState extends State<TabbarMaterialwidget> {
  @override
  Widget build(BuildContext context) {
    final Placeholder = Opacity(
      opacity: 0,
      child: IconButton(
          onPressed: (){}, icon: Icon(Icons.no_cell)
      ),
    );
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      elevation: 10,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIem(
              icon: Icon(Icons.home),
              index: 0
          ),
          buildIem(
              icon: Icon(Icons.file_open),
              index: 1
          ),
          Placeholder,
          buildIem(
              icon: Icon(Icons.bar_chart),
              index: 2
          ),
          buildIem(
              icon: Icon(Icons.notification_add_outlined),
              index: 3
          )
        ],
      ),

    );
  }

  Widget buildIem({required Icon icon, required int index,onpress})
  {
    final isSelected = index ==widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected?Colors.deepPurple:Colors.black
      ),
      child: IconButton
        (
          onPressed:() =>widget.onchangedTab(index),
          icon: icon
      ),
    );
  }
}
