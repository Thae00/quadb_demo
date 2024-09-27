import 'package:flutter/material.dart';

import '../resources/resources.dart';

extension DialogExtension on BuildContext {
  Future<void> showMetaDialog({
    required Widget child,
  }) async {
    Dialog dialog = Dialog(
        backgroundColor: Colors.white,
        insetAnimationCurve: Curves.easeIn,
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(padding: const EdgeInsets.all(20), child: child));
    await showDialog(
        barrierDismissible: false, context: this, builder: (ctx) => dialog);
  }

  Future<void> showImageDialog({
    required Widget child,
  }) async {
    Dialog dialog = Dialog(
        backgroundColor: Colors.white,
        insetAnimationCurve: Curves.easeIn,
        insetPadding:  const EdgeInsets.symmetric(horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: child);
    await showDialog(
        barrierDismissible: false, context: this, builder: (ctx) => dialog);
  }
}
