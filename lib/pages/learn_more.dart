import 'package:flutter/material.dart';
import 'package:spacely/models/card_class.dart';
import 'package:spacely/core/constants.dart';
import 'package:spacely/models/planet_info.dart';
import 'package:spacely/widgets/settings_menu.dart';
import 'package:spacely/models/favorites_model.dart';
import 'package:spacely/widgets/planet_data_table.dart';
import 'package:provider/provider.dart';

class LearnMorePage extends StatefulWidget {
  const LearnMorePage({super.key, required this.content});

  final CardClass content;

  @override
  State<LearnMorePage> createState() => _LearnMorePageState();
}

class _LearnMorePageState extends State<LearnMorePage> {
  double infoFontSize = 16;
  double titleFontSize = 32;
  Icon favoriteIcon = const Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    String planetName = widget.content.title;

    return Scaffold(
        appBar: AppBar(
          title: Text(planetName),
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
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SettingsMenu(
                onFontSizeChanged: (double fontSize) {
                  setState(() {
                    infoFontSize = fontSize;
                  });
                },
              ),
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
                  FittedBox(
                    child: Row(
                      children: [
                        Text(
                          planetName,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Consumer<FavoritesModel>(
                          builder: (context, favoritesModel, child) {
                            bool isFavorite = favoritesModel.favorites
                                .contains(planetName.toLowerCase());
                            return IconButton(
                              onPressed: () {
                                if (isFavorite) {
                                  favoritesModel.removeFavorite(
                                    planetName.toLowerCase(),
                                  );
                                } else {
                                  favoritesModel.addFavorite(
                                    planetName.toLowerCase(),
                                  );
                                }
                              },
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.grey,
                                size: 32,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: kDouble20,
                  ),
                  Text(
                    planetInfo[planetName.toLowerCase()]!.description,
                    // 'This is the description of ${planetName}',
                    style: TextStyle(fontSize: infoFontSize),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: kDouble20,
                  ),
                  FittedBox(
                    child: PlanetDataTable(
                      planet: planetInfo[planetName.toLowerCase()]!,
                      fontSize: infoFontSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
