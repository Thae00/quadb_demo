import 'package:flutter/material.dart';

extension AlignExtension on Widget? {
  Widget get center => Align(alignment: Alignment.center, child: this);

  Widget get startCenter => Align(alignment: Alignment.centerLeft, child: this);

  Widget get topCenter => Align(alignment: Alignment.topCenter, child: this);

  Widget get endCenter => Align(alignment: Alignment.centerRight, child: this);

  Widget get bottomRight =>
      Align(alignment: Alignment.bottomRight, child: this);

  Widget get bottomLeft => Align(alignment: Alignment.bottomLeft, child: this);
}
