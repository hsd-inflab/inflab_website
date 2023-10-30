import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/top_menu_entry.dart';

import 'avatar_tile.dart';
import 'header_lead.dart';
import 'header_title.dart';
import 'message_fab.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
      body: ListView.separated(
        padding: const EdgeInsets.only(
          left: 15,
          right: padding * 4,
          bottom: padding,
        ),
        itemCount: linkItems.length,
        itemBuilder: (context, index) {
          final e = linkItems.entries.elementAt(index);

          return AvatarTile(
            onPressed: e.key,
            title: e.value.$1,
            subTitle: e.value.$2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Icon(
                linkItems.entries.elementAt(index).value.$3,
                color: Colors.red,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: padding / 2,
          );
        },
      ),
      floatingActionButton: const MessageFab(),
    );
  }
}
