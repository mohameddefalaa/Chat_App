import 'package:flutter/material.dart';

class layoutapp extends StatefulWidget {
  const layoutapp({super.key});

  @override
  State<layoutapp> createState() => _layoutappState();
}

class _layoutappState extends State<layoutapp> {
  int currentindex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            currentindex = value;
            pageController.jumpToPage(value);
          });
        },
        elevation: 1,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat), label: 'chat'),
          NavigationDestination(icon: Icon(Icons.group), label: 'group'),
          NavigationDestination(
              icon: Icon(Icons.contact_mail), label: 'Contacts'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
      body: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentindex = value;
            });
          },
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
          ]),
    );
  }
}
