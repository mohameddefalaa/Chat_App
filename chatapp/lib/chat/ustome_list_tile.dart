import 'package:flutter/material.dart';

class Custome_list_tile extends StatefulWidget {
  const Custome_list_tile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.nameorimae,
    this.num_unreading_message = 0,
    required this.ontap,
  });
  final String title;

  final String subtitle;

  final String nameorimae;

  final int num_unreading_message;
  final void Function() ontap;

  @override
  State<Custome_list_tile> createState() => _Custome_list_tileState();
}

class _Custome_list_tileState extends State<Custome_list_tile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: widget.ontap,
                    title: Text(widget.title),
                    subtitle: Text(widget.subtitle),
                    leading: CircleAvatar(
                      child: Text(widget.nameorimae),
                    ),
                    trailing: Badge(
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(widget.num_unreading_message.toString()),
                      ),
                      largeSize: 30,
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
