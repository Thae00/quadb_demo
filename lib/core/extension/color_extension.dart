import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  Color primary() => Theme.of(this).colorScheme.primary;

  Color secondary() => Theme.of(this).colorScheme.secondary;

  Color error() => Theme.of(this).colorScheme.error;

  Color success() => Theme.of(this).colorScheme.tertiary;

  Color backGround() => Theme.of(this).colorScheme.background;

  Brightness brightness() => Theme.of(this).colorScheme.brightness;

  Color onBackground() => Theme.of(this).colorScheme.onBackground;

  Color onError() => Theme.of(this).colorScheme.onError;

  Color onPrimary() => Theme.of(this).colorScheme.onPrimary;

  Color onSecondary() => Theme.of(this).colorScheme.onSecondary;

  Color onSurface() => Theme.of(this).colorScheme.onSurface;
}
