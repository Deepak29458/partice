import 'package:flutter/material.dart';

String getHexCodeFromColourCode(String colourCode) {
  if (colourCode == 'black') {
    return '#000000';
  }
  if (colourCode == 'black-charcoal-heather') {
    return '#202526';
  }
  if (colourCode == 'black-white') {
    return '#ffffff';
  }
  if (colourCode == 'brick-red') {
    return '#ce4137';
  }
  if (colourCode == 'coffee') {
    return '#332421';
  }
  if (colourCode == 'flag-green') {
    return '#05af05';
  }
  if (colourCode == 'grey-melange') {
    return '#808080';
  }
  if (colourCode == 'grey-heather') {
    return '#808080';
  }
  if (colourCode == 'purple') {
    return '#650265';
  }
  if (colourCode == 'teal') {
    return '#223e56';
  }
  if (colourCode == 'white-black') {
    return '#000000';
  }
  if (colourCode == 'bottle-green') {
    return '#014c01';
  }
  if (colourCode == 'charcoal-heather') {
    return '#202526';
  }
  if (colourCode == 'maroon') {
    return '#5f0202';
  }
  if (colourCode == 'navy-blue') {
    return '#0d1242';
  }
  if (colourCode == 'navy') {
    return '#0d1242';
  }
  if (colourCode == 'pink') {
    return '#ff1478';
  }
  if (colourCode == 'red') {
    return '#d50000';
  }
  if (colourCode == 'royal-blue') {
    return '#214fdb';
  }
  if (colourCode == 'sky-blue') {
    return '#28b5e5';
  }
  if (colourCode == 'yellow') {
    return '#f8d619';
  }
  if (colourCode == 'white') {
    return '#ffffff';
  }
  return '#ffffff';
}

Color colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
