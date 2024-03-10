import 'package:flutter/material.dart';
import 'package:flutter_cc/widgets/planet_card.dart';

class PlanetRow extends StatelessWidget {
  const PlanetRow({super.key, required this.planets});

  final List<String> planets;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: planets
          .map(
            (planet) => PlanetCard(
              planetName: planet,
            ),
          )
          .toList(),
    );
  }
}
