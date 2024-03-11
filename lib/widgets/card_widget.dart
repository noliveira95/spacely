import 'package:flutter/material.dart';
import 'package:spacely/models/card_class.dart';
import 'package:spacely/core/constants.dart';
import 'package:spacely/pages/learn_more.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.content,
  });
  final CardClass content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        content.isClickable
            ? Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LearnMorePage(
                      content: content,
                    );
                  },
                ),
              )
            : null;
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(
            top: kDouble10,
            bottom: kDouble10,
          ),
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: kDouble10, bottom: kDouble20),
                child: SizedBox(
                  width: 148,
                  height: 148,
                  child: Image.asset(
                    content.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                content.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                content.description ?? 'Learn more about ${content.title}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
