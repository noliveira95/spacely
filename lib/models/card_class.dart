class CardClass {
  CardClass({
    required this.title,
    this.description,
    required this.image,
    this.isClickable = true,
  });
  String title;
  String? description;
  String image;
  bool isClickable;
}
