import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final int value;

  const CardWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 1000),
      child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(title),
                Text('Value: $value'),
              ],
            ),
          )),
    );
  }
}
