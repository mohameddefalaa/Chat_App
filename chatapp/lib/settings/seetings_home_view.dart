import 'package:chatapp/firebase/firebase_Auth/fire_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Seetings_view extends StatefulWidget {
  const Seetings_view({super.key});

  @override
  State<Seetings_view> createState() => _Seetings_viewState();
}

class _Seetings_viewState extends State<Seetings_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings '),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  minVerticalPadding: 40,
                  leading: CircleAvatar(
                    maxRadius: 30,
                  ),
                  title: Text(fireauth.user.displayName!),
                  trailing: Icon(Iconsax.scan_barcode),
                ),
                Card(
                  child: ListTile(
                    title: const Text('Profile'),
                    leading: const Icon(Iconsax.user),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_right_3)),
                  ),
                ),
                const Card(
                  child: ListTile(
                    title: Text('Theme'),
                    leading: Icon(Iconsax.color_swatch),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: ListTile(
                      title: const Text('DarkMode'),
                      leading: const Icon(Icons.dark_mode_outlined),
                      trailing: Switch(value: (true), onChanged: (value) {}),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Card(
                    child: ListTile(
                      title: const Text('Signout'),
                      leading: const Icon(Iconsax.user),
                      trailing: IconButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          icon: const Icon(Iconsax.logout_1)),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
