import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/header_lead.dart';
import 'package:inflab_website/header_title.dart';
import 'package:inflab_website/message_fab.dart';
import 'package:inflab_website/top_menu_entry.dart';

import 'avatar_tile.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolBarHeight,
        leadingWidth: leadingWidth,
        leading: const HeaderLead(
          insertBackButton: true,
        ),
        title: const HeaderTitle(),
        actions: [
          TopMenuEntry(
            text: 'GitHub',
            onPressed: () => html.window.open(gitHub, ''),
          ),
          TopMenuEntry(
            text: 'Home',
            onPressed: () => Navigator.of(context).pushNamed('/'),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(
          left: 15,
          right: padding * 4,
          bottom: padding,
        ),
        itemCount: team.length,
        itemBuilder: (context, index) {
          final e = team.entries.elementAt(index);

          return AvatarTile(
            onPressed: e.value.$2 == null ? null : e.value.$2!,
            title: e.key,
            subTitle: e.value.$3 == null ? null : e.value.$3!,
            backgroundImage:
                e.value.$1 == null ? null : AssetImage(e.value.$1!),
            child: e.value.$1 == null
                ? const Icon(
                    TablerIcons.user,
                    color: Colors.red,
                  )
                : null,
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
