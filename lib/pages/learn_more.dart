import 'package:flutter/material.dart';
import 'package:flutter_cc/models/card_class.dart';
import 'package:flutter_cc/core/constants.dart';
import 'package:flutter_cc/models/planet_info.dart';
import 'package:provider/provider.dart';
import 'package:flutter_cc/models/favorites_model.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.content.title),
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
              child: IconButton(
                onPressed: () {
                  debugPrint('pressed');
                },
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                ),
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
                  Wrap(
                    spacing: kDouble20,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            infoFontSize = 16;
                          });
                        },
                        child: const Text('Small Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            infoFontSize = 20;
                          });
                        },
                        child: const Text('Medium Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            infoFontSize = 24;
                          });
                        },
                        child: const Text('Large Text'),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        Text(
                          widget.content.title,
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
                                .contains(widget.content.title.toLowerCase());
                            return IconButton(
                              onPressed: () {
                                if (isFavorite) {
                                  favoritesModel.removeFavorite(
                                    widget.content.title.toLowerCase(),
                                  );
                                } else {
                                  favoritesModel.addFavorite(
                                    widget.content.title.toLowerCase(),
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
                    planetInfo[widget.content.title.toLowerCase()]!.description,
                    // 'This is the description of ${widget.content.title}',
                    style: TextStyle(fontSize: infoFontSize),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: kDouble10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
