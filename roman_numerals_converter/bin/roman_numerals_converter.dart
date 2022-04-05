import 'dart:io';
import 'package:roman_numerals_converter/roman_numerals_converter.dart';

void main(List<String> arguments) {
  print("Input Roman Numeral:");
  String numeral = stdin.readLineSync()!.toUpperCase();
  String x = convertRomanNumeral(numeral).toString();
  print("$numeral: $x");
}
