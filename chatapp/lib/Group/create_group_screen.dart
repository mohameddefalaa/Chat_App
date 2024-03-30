import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class create_group_screen extends StatefulWidget {
  const create_group_screen({super.key});

  @override
  State<create_group_screen> createState() => _create_group_screenState();
}

TextEditingController groupcontroller = TextEditingController();

class _create_group_screenState extends State<create_group_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Done'),
        icon: Icon(Icons.done),
      ),
      appBar: AppBar(
        title: const Text('Create Group '),
      ),
      body: Expanded(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_a_photo)),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: custome_textFormField(
                      hideicon: false,
                      ishidetext: false,
                      hintText: 'group Name',
                      customeicon: const Icon(Iconsax.user),
                      controller: groupcontroller),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: .8,
            ),
            Row(
              children: [
                Text('Members'),
                Spacer(),
                Text('0'),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  CheckboxListTile(
                      title: Text('membe name '),
                      value: false,
                      onChanged: (value) {}),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
