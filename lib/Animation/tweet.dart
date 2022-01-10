import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class TweenPage extends StatefulWidget {
  const TweenPage({Key? key}) : super(key: key);

  @override
  _TweenPageState createState() => _TweenPageState();
}

class _TweenPageState extends State<TweenPage> with SingleTickerProviderStateMixin {

  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 2000));
    animation = Tween(begin: 0.0,end: 200.0).animate(controller);
    animation.addListener(() {
      setState(() {
          // The state of animation has changed
      });
    });
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        width: animation.value,
        height: animation.value,
        child: const Center(child: FlutterLogo(size: 300,)),
      ),
    );
  }
}
