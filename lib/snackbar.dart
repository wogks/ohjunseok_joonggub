import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              child: const Text('Show SnackBar'),
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('나는 스낵바'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: (() {}),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
        ));
  }
}
