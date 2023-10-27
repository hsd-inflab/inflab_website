// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:inflab_website/constants.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: padding, bottom: padding * 2),
            child: TextButton(
              onPressed: () => html.window.open(gitHub, ''),
              child: const Text('GitHub'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: padding, bottom: padding * 2),
            child: TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/team'),
              child: const Text('Team'),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(
          left: padding,
          right: padding * 4,
          bottom: padding,
        ),
        itemCount: linkItems.length,
        itemBuilder: (context, index) {
          final snap = linkItems.entries.elementAt(index);
          return ListTile(
            contentPadding: kListTilePadding,
            shape: kListTileShape,
            onTap: () => html.window.open(snap.key, ''),
            leading: Padding(
              padding: kListIconPadding,
              child: Icon(
                linkItems.entries.elementAt(index).value.$3,
                color: Colors.red,
              ),
            ),
            title: Text(
              snap.value.$1,
              style: const TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              snap.value.$2,
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
