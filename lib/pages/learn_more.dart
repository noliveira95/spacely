import 'package:flutter/material.dart';
import 'package:flutter_cc/classes/card_class.dart';
import 'package:flutter_cc/core/constants.dart';

class LearnMorePage extends StatelessWidget {
  const LearnMorePage({super.key, required this.content});

  final CardClass content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(content.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(kDouble20),
              child: Column(
                children: [
                  Image.asset(content.image),
                  const SizedBox(
                    height: kDouble40,
                  ),
                  FittedBox(
                    child: Text(
                      'Learn more about ${content.title}',
                      style: const TextStyle(
                          fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: kDouble20,
                  ),
                  Text(content.title == 'Rockets'
                      ? rocketInfo
                      : content.title == 'Space'
                          ? spaceInfo
                          : travelInfo),
                ],
              ),
            ),
          ),
        ));
  }
}
