import 'package:flutter/material.dart';
import 'package:flutterspotify/modules/widgets/carousel.widget.dart';
import 'package:flutterspotify/modules/widgets/player.widget.dart';
import 'package:flutterspotify/modules/widgets/presentation_section.widget.dart';
import 'package:flutterspotify/modules/widgets/song_release_section.widget.dart';
import 'package:flutterspotify/widgets/atm/atm.row_separator.widget.dart';
import 'package:flutterspotify/widgets/mol/mol.navbar.widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SafeArea(child: Navbar()),
              const ColumnSeparator(half: true),
              PresentationSection(),
              const ColumnSeparator(),
              const ColumnSeparator(),
              const SongReleaseSection(),
              const ColumnSeparator(),
              const ColumnSeparator(),
              const Carousel(),
              const ColumnSeparator(),
              const ColumnSeparator(),
              const ColumnSeparator(),
              const ColumnSeparator(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeGradient extends StatelessWidget {
  const HomeGradient({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.teal, Colors.black],
          stops: [0, 0.2],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HomeGradient(),
        const HomeContent(),
        SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [Player()],
          ),
        )
      ],
    );
  }
}
