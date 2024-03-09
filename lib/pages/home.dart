import 'package:flutter/material.dart';
import 'package:flutter_cc/classes/card_class.dart';
import 'package:flutter_cc/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Spacely',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              content: CardClass(
                title: 'Rockets',
                image: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Space',
                      image: 'images/space.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Travel',
                      image: 'images/travel.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              content: CardClass(
                title: 'Yeah!',
                description: 'Yeah buddy!',
                image: 'images/yeah.png',
                isClickable: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
