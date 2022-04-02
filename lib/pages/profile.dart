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
      body:
      Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            OutlinedButton(onPressed: () {},
                style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.lock_open, size: 35, color: Colors.green),Text('  Войти', style: textStyle,)],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Избранное', style: textStyle,),],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Добавить точку', style: textStyle,),],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  О приложении', style: textStyle,),],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Политика конфиден...', style: textStyle,),],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Написать в техподдержку', style: textStyle,),],)),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green.shade300), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Оценить приложение', style: textStyle,),],)),
          ],
        ),
      ),
    );
  }
}