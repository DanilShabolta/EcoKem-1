import 'package:flutter/material.dart';
import 'package:ecokem/pages/categories.dart';
import 'package:ecokem/pages/loalty.dart';
import 'package:ecokem/pages/profile.dart';
import 'package:ecokem/pages/map.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();

}

class _MenuState extends State<Menu> {

int _selectedTab = 0;
static const List<Widget> _widgetOptions = <Widget>[
  Categories(),
  TrashMap(),
  loalty(),
  profile(),
];

void onSelectedTab(int index){
setState(() {
  _selectedTab = index;
});
}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedTab,
      items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.widgets, size: 30,),
          label: 'Категории'
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.map, size: 30,),
          label: 'Карта'),
      BottomNavigationBarItem(
          icon: Icon(Icons.star, size: 30,),
          label: 'Лояльность'),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_pin, size: 30,),
          label: 'Профиль'),
    ],
      onTap: onSelectedTab,
    ),
    );
  }
}