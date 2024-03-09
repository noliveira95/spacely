import 'package:flutter/material.dart';
import 'package:flutter_cc/models/card_class.dart';
import 'package:flutter_cc/widgets/card_widget.dart';
import 'package:flutter_cc/models/planet_info.dart';

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
                      title: planetInfo['mercury']!.name,
                      image: planetInfo['mercury']!.image,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: planetInfo['venus']!.name,
                      image: planetInfo['venus']!.image,
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
                      title: planetInfo['earth']!.name,
                      image: planetInfo['earth']!.image,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: planetInfo['mars']!.name,
                      image: planetInfo['mars']!.image,
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
                      title: planetInfo['jupiter']!.name,
                      image: planetInfo['jupiter']!.image,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: planetInfo['saturn']!.name,
                      image: planetInfo['saturn']!.image,
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
                      title: planetInfo['uranus']!.name,
                      image: planetInfo['uranus']!.image,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    content: CardClass(
                      title: planetInfo['neptune']!.name,
                      image: planetInfo['neptune']!.image,
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
