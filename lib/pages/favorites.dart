import 'package:flutter/material.dart';
import 'package:spacely/core/constants.dart';
import 'package:spacely/models/card_class.dart';
import 'package:spacely/models/favorites_model.dart';
import 'package:spacely/widgets/card_widget.dart';
import 'package:spacely/models/planet_info.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Consumer<FavoritesModel>(
            builder: (context, favoritesModel, child) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(
                  kDouble20,
                  kDouble20,
                  kDouble20,
                  kDouble40,
                ),
                child: Column(children: [
                  if (favoritesModel.favorites.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: kDouble40),
                        child: Text('No favorites yet!'),
                      ),
                    ),
                  for (var planet in favoritesModel.favorites)
                    CardWidget(
                      content: CardClass(
                        title: planetInfo[planet]!.name,
                        image: planetInfo[planet]!.image,
                      ),
                    ),
                ]),
              );
            },
          ),
        ),
      ),
    );
  }
}
