import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxDecorationPage extends StatefulWidget {
  const BoxDecorationPage({Key? key}) : super(key: key);

  @override
  _BoxDecorationPageState createState() => _BoxDecorationPageState();
}

class _BoxDecorationPageState extends State<BoxDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box Decoration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text("Hi Im Panda"),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                gradient: const RadialGradient(
                  colors:<Color>[Colors.green,Colors.greenAccent],

                )
              ),
              child: const Image(
                image: AssetImage("images/website.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
