import 'package:flutter/material.dart';

class aboutApp extends StatefulWidget {
  const aboutApp({Key? key}) : super(key: key);

  @override
  State<aboutApp> createState() => _aboutAppState();
}

class _aboutAppState extends State<aboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Пиздатое приложение'),
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: (ListView(
        children: [
          //const SizedBox(height: 50),
          Row(
            children: [
              SizedBox(height: 125, width: 200, child: Image.asset('images/gachi.gif'),),
              SizedBox(width: 5,),
              Text('Лучшее влагалище\n-очко товарища', style: TextStyle(fontSize: 20),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 23,),
              Text('Иногда жизнь \n— это жизнь\nа ты в ней иногда.', style: TextStyle(fontSize: 20),),
              SizedBox(width: 5,),
              SizedBox(height: 125, width: 200, child: Image.asset('images/billy-gachi.gif'),),
            ],
          ),
          //Text('Пиздатое приложение', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ],
      )),
    ),
    );
  }
}
