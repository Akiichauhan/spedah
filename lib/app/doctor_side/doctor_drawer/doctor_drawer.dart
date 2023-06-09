import 'package:flutter/material.dart';

class DoctorDrawer extends StatelessWidget {
  const DoctorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 73,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // do something
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // do something
            },
          ),
        ],
      ),
    );
  }
}
