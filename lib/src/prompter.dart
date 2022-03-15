import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  String _ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }

  /// Asks an Either/Or prompt and returns a boolean value.
  /// Takes a String param `prompt`.
  bool askBinary(String prompt) {
    final input = _ask('$prompt (y/n)', []);
    return input.contains('y');
  }

  /// Multiple choice prompt.
  /// Takes a String param `prompt` and a param `List<String> options`.
  askMultiple(String prompt, List<Option> options) {
    final input = _ask(prompt, options);

    try {
      return options[int.parse(input)].value;
    } catch (e) {
      return _ask(prompt, options);
    }
  }
}
