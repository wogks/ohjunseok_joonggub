import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('ss'),
          ),
          ListTile(
            title: const Text('item 1'),
            onTap: () {
              // 할일 작성 후 네비팝
              Navigator.pop(context);
            },
          ),
          const ListTile(
            title: Text('item 2'),
          ),
          const ListTile(
            title: Text('item 3'),
          ),
        ],
      )),
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer 예제'),
      ),
    );
  }
}
