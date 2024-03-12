import 'package:flutter/material.dart';
import 'package:spacely/models/planet_class.dart';

class PlanetDataTable extends StatelessWidget {
  const PlanetDataTable(
      {super.key, required this.planet, required this.fontSize});

  final Planet planet;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataTextStyle: TextStyle(
        fontSize: fontSize,
      ),
      columns: const <DataColumn>[
        DataColumn(
          label: Text('Property'),
        ),
        DataColumn(
          label: Text('Data'),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            const DataCell(
              Text('Distance'),
            ),
            DataCell(
              Text(planet.distance),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(
              Text('Gravity'),
            ),
            DataCell(
              Text(planet.gravity),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(
              Text('Radius'),
            ),
            DataCell(
              Text(planet.radius),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(
              Text('Temp'),
            ),
            DataCell(
              Text(planet.temperature),
            ),
          ],
        ),
      ],
    );
  }
}
