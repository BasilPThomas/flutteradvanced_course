import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  late bool _visible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visible = true;
  }

  void _toggleVisible(){
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Name Here"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Opacity(
                opacity: _visible ? 1.0 : 0.2,
                child: const Text("Ntha Myree")),
            RaisedButton(
                onPressed: _toggleVisible,
                child: const Text("Toggle"),
            )
          ],
        ),
      ),
    );
  }
}
