import 'package:flutter/material.dart';
import 'package:ecokem/pages/categories.dart';
import 'package:ecokem/pages/loalty.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();

}

class _MenuState extends State<Menu> {

int _selectedTab = 0;
static const List<Widget> _widgetOptions = <Widget>[
  Categories(),
  Text(
    'Карта'
  ),
  loalty(),
  Text(
      'Профиль'
  ),
];

void onSelectedTab(int index){
setState(() {
  _selectedTab = index;
});
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EcoKem', style: TextStyle(color: Colors.black, fontSize: 50, ), ),
        centerTitle: true,
        toolbarHeight: 85,
      ),
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