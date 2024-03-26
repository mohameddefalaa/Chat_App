import 'package:flutter/material.dart';

class layoutapp extends StatefulWidget {
  const layoutapp({super.key});

  @override
  State<layoutapp> createState() => _layoutappState();
}

class _layoutappState extends State<layoutapp> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedIndex: currentindex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat), label: 'chat'),
          NavigationDestination(icon: Icon(Icons.group), label: 'group'),
          NavigationDestination(
              icon: Icon(Icons.contact_mail), label: 'Contacts'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }
}
