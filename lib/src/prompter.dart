import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    _terminal.clearScreen();
    _terminal.printPrompt('$prompt (y/n)');
    final input = _terminal.collectInput();
    return input.contains('y');
  }

  ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();

    try {
      return options[int.parse(input)].value;
    } catch (e) {
      return ask(prompt, options);
    }
  }
}
