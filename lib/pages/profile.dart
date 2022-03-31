import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(color: Colors.black, fontSize: 16);
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextButton(onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Image(image: AssetImage('images/gachi.gif')), Text('  Сдать батарейки', style: textStyle,)],)),
            TextButton(onPressed: () {}, child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Icon(Icons.thermostat, size: 35, color: Colors.green), Text('  Сдать градусники', style: textStyle,),],)),
          ],
        ),
      ),
    );
  }
}