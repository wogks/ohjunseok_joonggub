import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
      ),
      body: AnimatedOpacity(opacity: _visible ? 1.0 : 0.0, 
      duration:const Duration(seconds: 1),
      child: Container(
        width: 200,height: 200,
        color: Colors.blue,
      ),
      ),
      floatingActionButton: 
      FloatingActionButton(child: const Icon(Icons.play_arrow), onPressed: () {
        setState(() {
          _visible = !_visible;
        });
      },),
    );
  }
}