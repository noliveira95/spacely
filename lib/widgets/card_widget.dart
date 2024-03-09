import 'package:flutter/material.dart';
import 'package:flutter_cc/classes/card_class.dart';
import 'package:flutter_cc/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.content,
  });
  final CardClass content;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.only(
          top: kDouble10,
          bottom: kDouble10,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(content.image),
            Text(
              content.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              content.description,
            ),
          ],
        ),
      ),
    );
  }
}