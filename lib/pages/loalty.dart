import 'dart:ui';

import 'package:flutter/material.dart';

class loalty extends StatefulWidget {
  const loalty({Key? key}) : super(key: key);

  @override
  State<loalty> createState() => _loaltyState();
}

class _loaltyState extends State<loalty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Text('Учавствуй в \nпрограмме \nлояльности', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),),

          ],
        ),
      ),
    );
  }
}
