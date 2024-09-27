import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qadb/core/core.dart';

import '../../../core/url/url_utils.dart';

class QadbImage extends StatelessWidget {
  final String path;
  final double width, height;
  final BoxFit fit;
  final Alignment alignment;
  const QadbImage(this.path,
      {super.key,
        required this.width,
        required this.height,
        this.fit = BoxFit.contain,
        this.alignment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
      alignment: alignment,
      fit: fit,
    );
  }
}

class QadbNetWorkImage extends StatelessWidget {
  final String path;
  final double width, height;
  final BoxFit fit;
  final Alignment alignment;
  const QadbNetWorkImage(this.path,
      {super.key,
        required this.width,
        required this.height,
        this.fit = BoxFit.contain,
        this.alignment = Alignment.center});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => Center(
        child: SizedBox(width: 30, height: 30,
            child:  CircularProgressIndicator(strokeWidth: 1,)),
      ),
      imageUrl: path,
      width: width,
      height: height,
      alignment: alignment,
      fit: fit,
    );
  }
}