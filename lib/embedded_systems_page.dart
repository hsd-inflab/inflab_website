import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/top_menu_entry.dart';

import 'header_lead.dart';
import 'header_title.dart';
import 'message_fab.dart';

class EmbeddedSystemsPage extends StatelessWidget {
  const EmbeddedSystemsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolBarHeight,
        leadingWidth: leadingWidth,
        leading: const HeaderLead(),
        title: const HeaderTitle(),
        actions: [
          TopMenuEntry(
            text: 'GitHub',
            onPressed: () => html.window.open(gitHub, ''),
          ),
          TopMenuEntry(
            text: 'Team',
            onPressed: () => Navigator.of(context).pushNamed('/team'),
          ),
        ],
      ),
      body: const Placeholder(),
      floatingActionButton: const MessageFab(),
    );
  }
}
