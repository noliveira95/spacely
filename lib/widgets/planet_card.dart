import 'package:flutter/material.dart';
import 'package:flutter_cc/models/card_class.dart';
import 'package:flutter_cc/models/planet_info.dart';
import 'package:flutter_cc/widgets/card_widget.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({super.key, required this.planetName});

  final String planetName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardWidget(
        content: CardClass(
          title: planetInfo[planetName]!.name,
          image: planetInfo[planetName]!.image,
        ),
      ),
    );
  }
}
