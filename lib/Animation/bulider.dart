import 'package:flutter/material.dart';

class AnimationBuilderPage extends StatefulWidget {
  const AnimationBuilderPage({Key? key}) : super(key: key);

  @override
  _AnimationBuilderPageState createState() => _AnimationBuilderPageState();
}

class _AnimationBuilderPageState extends State<AnimationBuilderPage> with TickerProviderStateMixin {

  late Animation animation;
   late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animation = AnimationController(vsync: this,duration: const Duration(milliseconds: 10000));
    CurvedAnimation curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween(begin:0.0,end:300.0).animate(curvedAnimation);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Builder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: AnimatedBuilder(
            animation: controller,
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
