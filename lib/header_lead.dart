import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/constants.dart';

class HeaderLead extends StatelessWidget {
  const HeaderLead({
    super.key,
    this.insertBackButton = false,
  });

  final bool insertBackButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding),
      child: CircleAvatar(
        child: Center(
          child: InkWell(
            onTap: () => Navigator.of(context).maybePop(),
            child: const Icon(
              TablerIcons.brain,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
