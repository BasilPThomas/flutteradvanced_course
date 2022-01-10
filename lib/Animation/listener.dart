import 'package:flutter/material.dart';

class ListenerPage extends StatefulWidget {
  const ListenerPage({Key? key}) : super(key: key);

  @override
  _ListenerPageState createState() => _ListenerPageState();
}

class _ListenerPageState extends State<ListenerPage> with TickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation = AnimationController(vsync: this,duration: const Duration(milliseconds: 10000));
    CurvedAnimation curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween(begin:0.0,end:300.0).animate(curvedAnimation);
    animation.addStatusListener(listener);
    controller.forward();
  }

  void listener(AnimationStatus status){
    if(status == AnimationStatus.completed){
      controller.reverse();
    }else if (status == AnimationStatus.dismissed){
      controller.forward();
    }
  }

  builder(BuildContext context){
    return SizedBox(
      height: animation.value,
      width: animation.value,
      child: const FlutterLogo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animatoion Builder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
            child: AnimatedBuilder(
              animation: animation,
              builder: (context, child){
                return SizedBox(
                  height: animation.value,
                  width: animation.value,
                  child: const FlutterLogo(),
                );
              },
            )
        ),
      ),
    );
  }
}
