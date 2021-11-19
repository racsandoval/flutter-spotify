import 'package:flutter/material.dart';
import 'package:flutterspotify/theme/app_theme.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  final List<Widget> _cards = const [
    CarouselCard(),
    CarouselCard(),
    CarouselCard(),
    CarouselCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) =>
            const RowSeparator(),
        itemCount: _cards.length,
        itemBuilder: (_, i) => _cards[i],
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/9/c/b/c/428501430167367.jpg',
          width: 150,
        ),
        const ColumnSeparator(half: true),
        Text(
          'Too Close To Touch',
          style: Theme.of(context).textTheme.headline4,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          maxLines: 2,
        ),
        Text(
          'Before I Cave In',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.apply(color: AppTheme.color.gray),
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          maxLines: 2,
        ),
      ],
    );
  }
}
