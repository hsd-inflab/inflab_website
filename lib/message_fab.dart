import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/expandable_fab.dart';

class MessageFab extends StatelessWidget {
  const MessageFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(
      distance: 112,
      children: [
        ActionButton(
          onPressed: () => html.window.open(gitHub, ''),
          icon: const Icon(
            TablerIcons.brand_github,
          ),
        ),
        ActionButton(
          onPressed: () => html.window.open(eMail, ''),
          icon: const Icon(TablerIcons.mail),
        ),
        ActionButton(
          onPressed: () => html.window.open(discord, ''),
          icon: const Icon(TablerIcons.brand_discord),
        ),
      ],
    );
  }
}
