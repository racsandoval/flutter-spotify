import 'package:flutter/material.dart';
import 'package:flutterspotify/theme/app_theme.dart';

class RowSeparator extends StatelessWidget {
  final bool half;

  const RowSeparator({Key? key, this.half = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: half ? AppTheme.spacing.halfGutter : AppTheme.spacing.gutter,
    );
  }
}

class ColumnSeparator extends StatelessWidget {
  final bool half;

  const ColumnSeparator({Key? key, this.half = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: half ? AppTheme.spacing.halfGutter : AppTheme.spacing.gutter,
    );
  }
}
