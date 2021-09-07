import 'characteristic.dart';

class CardModel {
  final bool isMostPopular;
  final String price;
  final String title;
  final String description;
  final List<Characteristic> characteristics;
  bool isSelected;

  CardModel(
      {required this.isMostPopular,
      required this.price,
      required this.title,
      required this.description,
      required this.characteristics,
      required this.isSelected});
}
