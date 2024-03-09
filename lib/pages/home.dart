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
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Mercury',
                      image: 'images/mercury.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Venus',
                      image: 'images/venus.png',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Earth',
                      image: 'images/earth.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Mars',
                      image: 'images/mars.png',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Jupiter',
                      image: 'images/jupiter.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Saturn',
                      image: 'images/saturn.png',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Uranus',
                      image: 'images/uranus.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: 'Neptune',
                      image: 'images/neptune.png',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
