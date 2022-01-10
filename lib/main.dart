import 'package:flutter/material.dart';
import 'package:flutteradvanced_course/Animation/bulider.dart';
import 'package:flutteradvanced_course/widgets/transformation.dart';

import 'Animation/listener.dart';
import 'Animation/tweet.dart';

void main(){
  runApp( const MaterialApp(
     home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListenerPage();
  }
}
