// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/constants.dart';
import 'package:inflab_website/expandable_fab.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140, //this
        leadingWidth: 85, //this
        leading: const Padding(
          padding: EdgeInsets.only(left: padding),
          child: CircleAvatar(
            child: Center(
              child: Icon(
                TablerIcons.brain,
                size: 30,
              ),
            ),
          ),
        ),
        title: Padding(
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
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: padding, bottom: padding * 2),
            child: TextButton(
              onPressed: () => _click(gitHub),
              child: const Text('GitHub'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: padding, bottom: padding * 2),
            child: TextButton(
              onPressed: () => _click(gitHub),
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
          return SizedBox(
            child: ListTile(
              contentPadding: const EdgeInsets.all(padding / 4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(padding / 2),
              ),
              onTap: () => _click(snap.key),
              leading: Icon(
                linkItems.entries.elementAt(index).value.$2,
                color: Colors.red,
              ),
              title: Text(
                snap.value.$1,
                style: const TextStyle(fontSize: 15),
              ),
              subtitle: const Text('Subtitle'),
              // trailing: Icon(YaruIcons.snapcraft),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: padding / 2,
          );
        },
      ),
      floatingActionButton: ExpandableFab(
        distance: 112,
        children: [
          ActionButton(
            onPressed: () => _click(gitHub),
            icon: const Icon(
              TablerIcons.brand_github,
            ),
          ),
          ActionButton(
            onPressed: () => _click(eMail),
            icon: const Icon(TablerIcons.mail),
          ),
          ActionButton(
            onPressed: () => _click(gitlab),
            icon: const Icon(TablerIcons.brand_gitlab),
          ),
          ActionButton(
            onPressed: () => _click(discord),
            icon: const Icon(TablerIcons.brand_discord),
          ),
        ],
      ),
    );
  }

  html.WindowBase _click(String url) => html.window.open(url, '');
}
