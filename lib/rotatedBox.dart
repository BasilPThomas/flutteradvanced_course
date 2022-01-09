import 'package:flutter/material.dart';

class RotatedBoxPage extends StatefulWidget {
  const RotatedBoxPage({Key? key}) : super(key: key);

  @override
  _RotatedBoxPageState createState() => _RotatedBoxPageState();
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {

  late int _turns;
  late double _values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _turns = 0;
    _values = 0.0;
  }

  void onChanged(double value){
    setState(() {
      _turns = value.toInt();
      _values = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotated Box"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Slider(
                value: _values,
                onChanged: onChanged,
                min: 0.0,
                max: 4.0,),
            RotatedBox(
                quarterTurns: _turns,
                child: const Text("Hello"),
            )
          ],
        ),
      ),
    );
  }
}
