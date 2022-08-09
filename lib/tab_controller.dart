import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  const MyTabController({Key? key}) : super(key: key);

  @override
  State<MyTabController> createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Controller'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.access_alarm), text: 'Tab1'),
              Text('tab2'),
              Text('tab3')
            ],
          ),
        ),
        body: const TabBarView(
            children: [Icon(Icons.access_alarm), Text('Tab2'), Text('Tab3')]),
      ),
    );
  }
}
