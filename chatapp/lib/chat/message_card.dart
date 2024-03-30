import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Message_Card extends StatefulWidget {
  const Message_Card({super.key});

  @override
  State<Message_Card> createState() => _Message_CardState();
}

class _Message_CardState extends State<Message_Card> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          reverse: true,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: index % 2 == 0
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                index % 2 == 0
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit_square,
                        ))
                    : const SizedBox(),
                Card(
                  color: index % 2 == 0
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.background,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(index % 2 == 0 ? 0 : 16),
                          bottomLeft:
                              Radius.circular(index % 2 == 0 ? 16 : 0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width / 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'messag p Radius.circular(16)))',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '12:0.6 pm  ',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              index % 2 == 0
                                  ? const Icon(
                                      Iconsax.tick_circle,
                                      color: Colors.blueAccent,
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
