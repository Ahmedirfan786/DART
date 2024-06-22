import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int? range = int.tryParse(stdin.readLineSync()!);

  if (range == null || range < 0) {
    print('Invalid input. Please enter a non-negative integer.');
    return;
  }

  for (var i = 0; i <= range; i++) {
    print('Beep $i');
    _beep();
    sleep(Duration(seconds: 1)); 
  }
}

void _beep() {
  stdout.write('\x07');
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input a number.
// The input is then validated to ensure it's a non-negative integer.
// If the input is invalid, an error message is printed, and the program exits.
// Otherwise, the program iterates from 0 to the entered number.
// During each iteration, it prints a message ('Beep $i') and attempts to emit a beep sound.
// A 1-second delay is introduced between each iteration using sleep(Duration(seconds: 1)).
// Import statement for 'dart:io' is used to enable interaction with input/output streams.