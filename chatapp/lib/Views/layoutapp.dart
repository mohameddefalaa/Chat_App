import 'package:chatapp/chat/chat_home_view.dart';
import 'package:chatapp/home/contact_home_view.dart';
import 'package:chatapp/Group/group_home_view.dart';
import 'package:chatapp/home/seetings_home_view.dart';
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
      body: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentindex = value;
            });
          },
          children: const [
            Chat_View(),
            Group_View(),
            Contact_View(),
            Seetings_view(),
          ]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentindex,
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
    );
  }
}
