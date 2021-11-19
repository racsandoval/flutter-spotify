import 'package:flutter/material.dart';
import 'package:flutterspotify/modules/widgets/presentation_card.widget.dart';

class PresentationSection extends StatelessWidget {
  PresentationSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      primary: true,
      shrinkWrap: true,
      childAspectRatio: 3,
      children: _presentationCardList,
    );
  }

  final List<PresentationCard> _presentationCardList = [
    const PresentationCard(
      text: 'Too Close To Touch',
      imageSource:
          'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/9/c/b/c/428501430167367.jpg',
    ),
    const PresentationCard(
      text: 'Panic! At The Disco',
      imageSource:
          'https://m.media-amazon.com/images/I/91vKScuJ4tL._AC_SL1500_.jpg',
    ),
    const PresentationCard(
      text: 'Bring Me The Horizon',
      imageSource:
          'https://m.media-amazon.com/images/I/91n+fcFvY3L._SL1500_.jpg',
    ),
    const PresentationCard(
      text: 'Thrice',
      imageSource:
          'https://distortedsoundmag.com/wp-content/uploads/2021/07/HorizonsEast-Thrice.jpg',
    ),
    const PresentationCard(
      text: 'Normandie',
      imageSource:
          'https://hasitleaked.com/wp-content/uploads/2021/01/Screenshot_20210114-010811_Instagram.jpg',
    ),
    const PresentationCard(
      text: 'Polyphia',
      imageSource:
          'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/b/0/c/f/853311582111839.jpg',
    ),
  ];
}
