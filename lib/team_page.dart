// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/header_lead.dart';
import 'package:inflab_website/header_title.dart';

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
              onPressed: () => Navigator.of(context).pushNamed('/'),
              child: const Text('Home'),
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
        itemCount: team.length,
        itemBuilder: (context, index) {
          final e = team.entries.elementAt(index);
          return ListTile(
            contentPadding: kListTilePadding,
            shape: kListTileShape,
            onTap: e.value.$2 == null
                ? null
                : () => html.window.open(e.value.$2!, ''),
            leading: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage:
                    e.value.$1 == null ? null : AssetImage(e.value.$1!),
                child: e.value.$1 == null
                    ? const Icon(
                        TablerIcons.user,
                        color: Colors.red,
                      )
                    : null,
              ),
            ),
            title: Text(
              e.key,
              style: const TextStyle(fontSize: 15),
            ),
            subtitle: e.value.$3 == null
                ? null
                : Text(
                    e.value.$3!,
                  ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: padding / 2,
          );
        },
      ),
    );
  }
}
