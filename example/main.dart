import 'package:prompter_jeremylshepherd/prompter_jeremylshepherd.dart';

void main() {
  var prompter = Prompter();
  var options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f'),
  ];

  String colorCode = prompter.askMultiple('Select a color', options);
  bool userPick = prompter.askBinary('Do you like Dart?');
  if (userPick) {
    print("Yeah us too");
  } else {
    print("That's too bad");
  }
  print(colorCode);
}
