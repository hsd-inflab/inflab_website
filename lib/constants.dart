import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

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

final linkItems = <String, (String, String, IconData)>{
  'https://openjdk.org/': (
    'Java und Software-Engineering',
    'GIT4, SE1, SE2, SE3',
    TablerIcons.coffee
  ),
  'https://www.arduino.cc/': (
    'Embedded Systeme mit Arduino',
    'ES1, ES2',
    TablerIcons.circuit_cell_plus
  ),
  'https://flutter.dev': (
    'App-Entwicklung mit Flutter',
    'iOS, Android, Desktop und Web Apps Programmierung',
    TablerIcons.brand_flutter
  ),
  'https://www.lego.com/de-de': (
    'Künstliche Intelligenz und Roboter mit Lego',
    'AI, Robots',
    TablerIcons.lego
  ),

  'https://www.bundesnetzagentur.de/DE/Fachthemen/Telekommunikation/Frequenzen/SpezielleAnwendungen/Amateurfunk/start.html':
      ('Amateurfunk', 'Funken', TablerIcons.antenna),

  // '': ('',''),
};

final team = <String, (String, String?)>{
  'Pedram Nazari': (
    'Prof. Dr.',
    'https://ei.hs-duesseldorf.de/personen/nazari'
  ),
  'Stephan Mondwurf ': (
    'Prof. Dr.-Ing.',
    'https://ei.hs-duesseldorf.de/personen/mondwurf'
  ),
  'Wolfgang Lux ': (
    'Prof. Dr. rer. nat.',
    'https://ei.hs-duesseldorf.de/personen/lux'
  ),
  'Oliver von Fragstein': ('M. Sc., wiss. Mitarbeiter', null),
  'Frederik Feichtmeier': (
    'B. Eng., wiss. Mitarbeiter',
    'https://github.com/Feichtmeier'
  ),
  'Michael Kosub': ('Mitarbeiter', null)
};
