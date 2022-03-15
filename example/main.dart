import 'dart:io';
import 'package:prompter_jeremylshepherd/src/option.dart';
import 'package:prompter_jeremylshepherd/src/prompter.dart';

void main() {
  var _prompter = Prompter();
  var options = [Option('I want red', '#f00'), Option('I want blue', '#00f')];
  final userPick = _prompter.askBinary('Do you like Dart?');
  if (userPick) {
    print("Yeah us too");
  } else {
    print("That's too bad");
  }
}
