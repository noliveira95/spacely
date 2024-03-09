import 'package:flutter/material.dart';
import 'package:flutter_cc/classes/card_class.dart';
import 'package:flutter_cc/core/constants.dart';

class LearnMorePage extends StatefulWidget {
  const LearnMorePage({super.key, required this.content});

  final CardClass content;

  @override
  State<LearnMorePage> createState() => _LearnMorePageState();
}

class _LearnMorePageState extends State<LearnMorePage> {
  double customFontSize = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.content.title),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 32,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'This is the ${widget.content.title} page',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.info),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(kDouble20),
              child: Column(
                children: [
                  Image.asset(widget.content.image),
                  const SizedBox(
                    height: kDouble40,
                  ),
                  Wrap(
                    spacing: kDouble20,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 16;
                          });
                        },
                        child: const Text('Small Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 20;
                          });
                        },
                        child: const Text('Medium Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 24;
                          });
                        },
                        child: const Text('Large Text'),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Text(
                      'Learn more about ${widget.content.title}',
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: kDouble20,
                  ),
                  Text(
                    widget.content.title == 'Rockets'
                        ? rocketInfo
                        : widget.content.title == 'Space'
                            ? spaceInfo
                            : travelInfo,
                    style: TextStyle(fontSize: customFontSize),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: kDouble10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
