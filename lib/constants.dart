import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:inflab_website/globals.dart';
import 'package:universal_html/html.dart' as html;

const padding = 20.0;

const toolBarHeight = 140.0;
const leadingWidth = 85.0;
const kListTilePadding = EdgeInsets.only(left: padding, right: padding);
const kListIconPadding = EdgeInsets.only(bottom: 5, right: padding + 2);
final kListTileShape =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(padding / 2));

const title = 'HSD, FB EI';

const headerText = 'Inflab';

const gitHub = 'https://github.com/hs-duesseldorf';

const eMail = 'mailto:inflab.ei@hs-duesseldorf.de';

const avatar = 'https://i.imgur.com/zgynPjC.jpg';

const discord = 'https://discord.com/users/Feichtmeier';

final linkItems = <void Function(), (String, String, IconData)>{
  () => navigatorKey.currentState?.pushNamed('/java'): (
    'Java und Software-Engineering',
    'GIT4, SE1, SE2, SE3',
    TablerIcons.coffee
  ),
  () => navigatorKey.currentState?.pushNamed('/embedded'): (
    'Embedded Systeme mit Arduino',
    'ES1, ES2',
    TablerIcons.circuit_cell_plus
  ),
  () => html.window.open('https://flutter.dev', ''): (
    'App-Entwicklung mit Flutter',
    'iOS, Android, Desktop und Web Apps Programmierung',
    TablerIcons.brand_flutter
  ),
  () => html.window.open('https://www.lego.com/de-de', ''): (
    'Künstliche Intelligenz und Roboter mit Lego',
    'AI, Robots',
    TablerIcons.lego
  ),
  () => html.window.open(
        'https://www.bundesnetzagentur.de/DE/Fachthemen/Telekommunikation/Frequenzen/SpezielleAnwendungen/Amateurfunk/start.html',
        '',
      ): ('Amateurfunk', 'Funken', TablerIcons.antenna),

  // '': ('',''),
};

final team = <String, (String?, void Function()?, String?)>{
  'Prof. Dr. Pedram Nazari': (
    'assets/images/pedram.jpg',
    () => html.window.open('https://ei.hs-duesseldorf.de/personen/nazari', ''),
    'Professor für Software Engineering'
  ),
  'Prof. Dr.-Ing. Stephan Mondwurf ': (
    'assets/images/mondwurf.jpg',
    () =>
        html.window.open('https://ei.hs-duesseldorf.de/personen/mondwurf', ''),
    'Professor für Embedded Systeme',
  ),
  'Prof. Dr. rer. nat. Wolfgang Lux ': (
    'assets/images/wolfgang.jpeg',
    () => html.window.open('https://ei.hs-duesseldorf.de/personen/lux', ''),
    'Professor für Betriebssysteme'
  ),
  'M. Sc. Oliver von Fragstein': (
    'assets/images/oli.jpg',
    () => html.window
        .open('https://ei.hs-duesseldorf.de/personen/von-fragstein', ''),
    'Wissenschaftlicher Mitarbeiter'
  ),
  'B. Eng. Frederik Feichtmeier': (
    'assets/images/fred.jpg',
    () => html.window.open('https://github.com/Feichtmeier', ''),
    'Wissenschaftlicher Mitarbeiter'
  ),
  'Michael Kosub': (null, null, 'Mitarbeiter'),
};
