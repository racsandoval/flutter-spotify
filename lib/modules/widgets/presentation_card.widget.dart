import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterspotify/theme/app_theme.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';

class PresentationCard extends StatelessWidget {
  const PresentationCard({
    Key? key,
    required this.imageSource,
    required this.text,
  }) : super(key: key);

  final String imageSource;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: AppTheme.color.grayXDark,
      child: Row(children: [
        Image.network(imageSource),
        const RowSeparator(half: true),
        Expanded(
          flex: 2,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline4,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            maxLines: 2,
          ),
        ),
      ]),
    );
  }
}
