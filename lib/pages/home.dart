import 'package:flutter/material.dart';
import 'package:flutter_cc/core/constants.dart';
import 'package:flutter_cc/models/card_class.dart';
import 'package:flutter_cc/widgets/card_widget.dart';
import 'package:flutter_cc/models/planet_info.dart';
import 'package:flutter_cc/widgets/planet_card.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Row(
                children: [
                  PlanetCard(planetName: 'mercury'),
                  PlanetCard(planetName: 'venus'),
                ],
              ),
              Row(
                children: [
                  PlanetCard(planetName: 'earth'),
                  PlanetCard(planetName: 'mars'),
                ],
              ),
              Row(
                children: [
                  PlanetCard(planetName: 'jupiter'),
                  PlanetCard(planetName: 'saturn'),
                ],
              ),
              Row(
                children: [
                  PlanetCard(planetName: 'uranus'),
                  PlanetCard(planetName: 'neptune'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
