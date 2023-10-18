import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

const padding = 20.0;

const title =
    'Hochschule Düsseldorf | Fachbereich Elektro- und Informationstechnik';

const headerText = 'Labor für Informatik und Embeddeded Systeme';

const gitHub = 'https://github.com/hs-duesseldorf';

const eMail = 'mailto:inflab.ei@hs-duesseldorf.de';

const avatar = 'https://i.imgur.com/zgynPjC.jpg';

const gitlab = 'https://gitlab.com/Feichtmeier';

const discord = 'https://discord.com/users/Feichtmeier';

final linkItems = <String, (String, IconData)>{
  'https://openjdk.org/': ('Java und Software-Engineering', TablerIcons.coffee),
  'https://www.arduino.cc/': (
    'Embedded Systeme mit Arduino',
    TablerIcons.circuit_cell_plus
  ),
  'https://flutter.dev': (
    'App-Entwicklung mit Flutter',
    TablerIcons.brand_flutter
  ),
  'https://www.lego.com/de-de': (
    'Künstliche Intelligenz und Roboter mit Lego',
    TablerIcons.lego
  ),

  'https://www.bundesnetzagentur.de/DE/Fachthemen/Telekommunikation/Frequenzen/SpezielleAnwendungen/Amateurfunk/start.html':
      ('Amateurfunk', TablerIcons.antenna),

  // '': ('',''),
};
