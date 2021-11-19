import 'package:flutter/material.dart';
import 'package:flutterspotify/theme/app_theme.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
              Text('Boa noite', style: Theme.of(context).textTheme.headline2),
        ),
        FaIcon(FontAwesomeIcons.bell, color: AppTheme.color.white),
        const RowSeparator(),
        FaIcon(FontAwesomeIcons.history, color: AppTheme.color.white),
        const RowSeparator(),
        FaIcon(FontAwesomeIcons.cog, color: AppTheme.color.white)
      ],
    );
  }
}
