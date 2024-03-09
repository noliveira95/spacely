import 'package:flutter/material.dart';
import 'package:flutter_cc/classes/card_class.dart';
import 'package:flutter_cc/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Flutter Demo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              content: CardClass(
                title: 'Rocket',
                description: 'Blast off!',
                image: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Space',
                      description: 'Zero gravity!',
                      image: 'images/space.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Travel',
                      description: 'See the world!',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
