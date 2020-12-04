import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/green-earth.png',
    title: 'Bulky waste',
    description: 'Special arrangements have to be made for these items to be collected with the use of a tipper truck. Removal of bulky waste comes at a cost, which is provided after an assessment has been made. Our bulky collection service charge depends upon the size of the items to be collected. ',
  ),
  Slide(
    imageUrl: 'assets/metal.png',
    title: 'Metal Waste',
    description: 'Metals and other heavy objects should not be placed with regular house hold waste. Special arrangement must be made with regional offices for the collection of bulky waste.',
  ),
  Slide(
    imageUrl: 'assets/trash-bin.png',
    title: 'Receptacles',
    description: 'Your storage receptacle should be placed at the front of the lots where it can be accessed without hindrance 24 hours per day by the collection crew. Lids for the receptacles are highly recommended.',
  ),
];