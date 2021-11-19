import 'package:flutter/material.dart';
import 'package:flutterspotify/theme/app_theme.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({Key? key}) : super(key: key);

  final String _imageSource =
      'https://studiosol-a.akamaihd.net/uploadfile/letras/albuns/9/c/b/c/428501430167367.jpg';

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: AppTheme.color.grayXDark,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(_imageSource),
                ),
              ),
            ),
            const RowSeparator(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Before I Cave In',
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 1,
                  ),
                  Text(
                    'Too Close To Touch',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.apply(color: AppTheme.color.gray),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const RowSeparator(),
            const FaIcon(FontAwesomeIcons.solidHeart, color: Colors.teal),
            const RowSeparator(),
            FaIcon(FontAwesomeIcons.pause, color: AppTheme.color.white),
            const RowSeparator(),
          ],
        ),
      ),
    );
  }
}

class PlayerTimer extends StatelessWidget {
  const PlayerTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            color: Colors.white,
            backgroundColor: AppTheme.color.gray,
            value: 0.5,
            minHeight: 2.0,
          ),
        ));
  }
}

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: const [
        PlayerCard(),
        PlayerTimer(),
      ],
    );
  }
}
