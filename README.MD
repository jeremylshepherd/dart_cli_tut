# Prompter

Simple CLI library for proving simple prompts and receiving user input.

```dart
// Code Example
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
```

```bash
// Output
Select a color
[0] - I want red
[1] - I want blue
Enter a choice

>0

Do you like Dart? (y/n)
Enter a choice

>y
Yeah us too
#f00
```
