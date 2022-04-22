import 'package:flutter/material.dart';

class loalty extends StatefulWidget {
  const loalty({Key? key}) : super(key: key);

  @override
  State<loalty> createState() => _loaltyState();
}

class _loaltyState extends State<loalty> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(color: Colors.black, fontSize: 20);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: ListView(
          children: [
            SizedBox(height: 45),
            Text('Участвуй в\nпрограмме\nлояльности', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,), ),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.battery_charging_full, size: 35, color: Colors.green,),
            Text('Выполняй простые полезные \nдействия и получай за это \nбаллы лояльности', style: textStyle,)],)),
            SizedBox(height: 15),
            TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.battery_charging_full, size: 35, color: Colors.green,),
              Text('Обменивай баллы на \nпартнёрские призы и баллы \nлояльности других брендов', style: textStyle,)],)),
            SizedBox(height: 15),
            TextButton(onPressed: () {}, child: Row(children: [Icon(Icons.battery_charging_full, size: 35, color: Colors.green,),
              Text('Сделай добрые дела своей \nпривычкой и получай за это \nбонусы, скидки и подарки', style: textStyle,)],)),
            SizedBox(height: 50),
            TextButton(onPressed: () {}, child: Text('Регистрация', style: textStyle),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.green)
                      )
                  ))),
          ],
        ),
      ),
    );
  }
}
