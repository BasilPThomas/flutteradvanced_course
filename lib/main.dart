import 'package:flutter/material.dart';
import 'package:flutteradvanced_course/opactity.dart';
import 'package:flutteradvanced_course/rotatedBox.dart';
import 'package:flutteradvanced_course/transformation.dart';
import 'boxdecortion.dart';

void main(){
  runApp( const MaterialApp(
     home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TransformationPage();
  }
}
