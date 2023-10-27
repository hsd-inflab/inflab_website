// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:inflab_website/constants.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(title),
          Text(
            headerText,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headlineLarge
                ?.copyWith(fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
