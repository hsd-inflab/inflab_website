// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:inflab_website/constants.dart';

class AvatarTile extends StatelessWidget {
  const AvatarTile({
    super.key,
    this.onPressed,
    required this.title,
    this.subTitle,
    this.child,
    this.backgroundImage,
  });

  final void Function()? onPressed;
  final String title;
  final String? subTitle;
  final Widget? child;
  final ImageProvider? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: kListTilePadding,
      shape: kListTileShape,
      onTap: onPressed,
      leading: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: CircleAvatar(
          backgroundImage: backgroundImage,
          child: child,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
      subtitle: subTitle == null
          ? null
          : Text(
              subTitle!,
            ),
    );
  }
}
