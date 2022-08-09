import 'package:flutter/material.dart';
import 'package:ohjunseokjunggup/animated_opacity.dart';
import 'package:ohjunseokjunggup/drawer.dart';
import 'package:ohjunseokjunggup/form_validation.dart';
import 'package:ohjunseokjunggup/oriental.dart';
import 'package:ohjunseokjunggup/snackbar.dart';
import 'package:ohjunseokjunggup/tab_controller.dart';

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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyAnimatedContainer()));
            },
          ),
          ListTile(
            title: const Text('Animated Opacity'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyAnimatedOpacity()));
            },
          ),
          ListTile(
            title: const Text('Drwaer'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyDrawer()));
            },
          ),
          ListTile(
            title: const Text('Snack Bar'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MySnackBar()));
            },
          ),
          ListTile(
            title: const Text('Orientation Builder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyOrientation()));
            },
          ),
          ListTile(
            title: const Text('Tab Controller'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyTabController()));
            },
          ),
          ListTile(
            title: const Text('Form Validation'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyFormValidation()));
            },
          ),
        ],
      ),
    );
  }
}
