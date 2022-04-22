import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(color: Colors.black, fontSize: 20);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView(
          children: [
            TextButton(onPressed: () {},
                style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.lock_open, size: 35, color: Colors.green),Text('  Войти', style: textStyle,)],)),
            SizedBox(height: 50),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Избранное', style: textStyle,),],)),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Добавить точку', style: textStyle,),],)),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  О приложении', style: textStyle,),],)),
            SizedBox(height: 50,),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Политика конфиденциальности', style: textStyle,),],)),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Написать в техподдержку', style: textStyle,),],)),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey.shade100), padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25), backgroundColor: Colors.white),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Оценить приложение', style: textStyle,),],)),
          ],
        ),
      ),
    );
  }
}