import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyOrientation extends StatefulWidget {
  const MyOrientation({Key? key}) : super(key: key);

  @override
  State<MyOrientation> createState() => _MyOrientationState();
}

class _MyOrientationState extends State<MyOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrientationBuilder'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
              children: List.generate(50, (position) {
                return Center(
                  child: Text('Item $position'),
                );
              }));
        },
      ),
    );
  }
}
