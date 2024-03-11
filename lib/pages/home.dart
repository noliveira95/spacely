import 'package:flutter/material.dart';
import 'package:spacely/core/constants.dart';
import 'package:spacely/widgets/planet_row.dart';

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
              PlanetRow(
                planets: ['mercury', 'venus'],
              ),
              PlanetRow(
                planets: ['earth', 'mars'],
              ),
              PlanetRow(
                planets: ['jupiter', 'saturn'],
              ),
              PlanetRow(
                planets: ['uranus', 'neptune'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
