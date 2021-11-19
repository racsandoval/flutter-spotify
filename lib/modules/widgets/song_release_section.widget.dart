import 'package:flutter/material.dart';
import 'package:flutterspotify/theme/app_theme.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SongReleaseSection extends StatelessWidget {
  const SongReleaseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SongReleaseHeader(),
        ColumnSeparator(),
        SongReleaseCard()
      ],
    );
  }
}

class SongReleaseHeader extends StatelessWidget {
  const SongReleaseHeader({Key? key}) : super(key: key);

  final String _imageSource =
      'https://cdn11.bigcommerce.com/s-8e25iavqdi/images/stencil/1280x1280/products/9792/9548/she-loves-me-not-album-cover-sticker__45370.1539497918.jpg';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(_imageSource),
            ),
          ),
        ),
        const RowSeparator(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NOVO LANÇAMENTO DE',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.apply(color: AppTheme.color.gray)),
            Text('Papa Roach', style: Theme.of(context).textTheme.headline2),
          ],
        )
      ],
    );
  }
}

class SongReleaseCard extends StatelessWidget {
  const SongReleaseCard({Key? key}) : super(key: key);

  final String _imageSource =
      'https://img.discogs.com/hzBywnTSrKDw8K4CdsQ2MJrlQVY=/fit-in/600x587/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-367671-1233543820.jpeg.jpg';

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: AppTheme.color.grayXDark,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(_imageSource),
            ),
            const RowSeparator(half: true),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Come Around',
                              style: Theme.of(context).textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 1,
                            ),
                            Text(
                              'Who Do You Trust?',
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
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(FontAwesomeIcons.heart,
                            color: AppTheme.color.white),
                        FaIcon(FontAwesomeIcons.playCircle,
                            color: AppTheme.color.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const RowSeparator(half: true),
          ],
        ),
      ),
    );
  }
}
