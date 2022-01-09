import 'package:flutter/material.dart';

class TransformationPage extends StatefulWidget {
  const TransformationPage({Key? key}) : super(key: key);

  @override
  _TransformationPageState createState() => _TransformationPageState();
}

class _TransformationPageState extends State<TransformationPage> {

   late double _x ;
   late double _y ;
   late double _z ;

  @override
  void initState() {
    super.initState();
    _x = 0.0;
    _y = 0.0;
    _z = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transformation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
             Row(
               children: [
                 const Text("X"),
                 Slider(
                   value: _x,
                   onChanged: (double value) => setState(() => _x=value ),
                 )
               ],
             ),
              Row(
                children: [
                  const Text("Y"),
                  Slider(
                    value: _y,
                    onChanged: (double value) => setState(() => _y=value ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text("Z"),
                  Slider(
                    value: _z,
                    onChanged: (double value) => setState(() => _z=value ),
                  )
                ],
              ),
              Transform(transform: Matrix4.skewY(_y),
                child: Transform(transform: Matrix4.skewX(_x),
                  child: Transform(transform: Matrix4.rotationZ(_z),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Hello')
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
