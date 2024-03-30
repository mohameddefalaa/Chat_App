import 'package:flutter/material.dart';

class Say_Hello extends StatefulWidget {
  const Say_Hello({super.key});

  @override
  State<Say_Hello> createState() => _Say_HelloState();
}

class _Say_HelloState extends State<Say_Hello> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: GestureDetector(
            onTap: () {},
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('👋',
                        style: Theme.of(context).textTheme.displayMedium),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'say Hello ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
