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
  double customFontSize = 16;
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
            Consumer<FavoritesModel>(
              builder: (context, favoritesModel, child) {
                bool isFavorite = favoritesModel.favorites
                    .contains(widget.content.title.toLowerCase());
                return IconButton(
                  onPressed: () {
                    if (isFavorite) {
                      favoritesModel
                          .removeFavorite(widget.content.title.toLowerCase());
                    } else {
                      favoritesModel
                          .addFavorite(widget.content.title.toLowerCase());
                    }
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                );
              },
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
                            customFontSize = 16;
                          });
                        },
                        child: const Text('Small Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 20;
                          });
                        },
                        child: const Text('Medium Text'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            customFontSize = 24;
                          });
                        },
                        child: const Text('Large Text'),
                      ),
                    ],
                  ),
                  FittedBox(
                    child: Text(
                      'Learn more about ${widget.content.title}',
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: kDouble20,
                  ),
                  Text(
                    planetInfo[widget.content.title.toLowerCase()]!.description,
                    // 'This is the description of ${widget.content.title}',
                    style: TextStyle(fontSize: customFontSize),
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
