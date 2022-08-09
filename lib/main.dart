
import 'package:flutter/material.dart';

import 'animated_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeState(),
    );
  }
}


class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Animated Container'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyAnimatedContainer()));
            },
          ),
          ListTile(
            title: const Text('Animated Container'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyAnimatedContainer()));
            },
          ),
        ],
      ),
    );
  }
}