import 'dart:async';
import 'dart:io';

void main() {
  stdout.write('Enter minutes: ');
  int minutes = int.parse(stdin.readLineSync()!);

  stdout.write('Enter seconds: ');
  int seconds = int.parse(stdin.readLineSync()!);

  int totalSeconds = minutes * 60 + seconds;

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (totalSeconds <= 0) {
      timer.cancel();
      print('Stopwatch finished!');
      _beep();
    } else {
      int remainingMinutes = totalSeconds ~/ 60;
      int remainingSeconds = totalSeconds % 60;
      print('${_formatTwoDigits(remainingMinutes)}:${_formatTwoDigits(remainingSeconds)}');
      totalSeconds--;
    }
  });
}

void _beep() {
  // This function emits a beep sound in the console
  print('\x07');
}

String _formatTwoDigits(int num) {
  return num.toString().padLeft(2, '0');
}


// Explanation:
// - The main() function serves as the entry point of the Dart program.
// - It prompts the user to enter minutes and seconds via standard output.
// - User inputs for minutes and seconds are read from the standard input and parsed into integers.
// - The total countdown time in seconds is calculated based on user inputs.
// - A Timer.periodic() is set up to execute a callback function every second, decrementing the total countdown time.
// - If the countdown reaches zero or below, the timer is canceled, and a message 'Stopwatch finished!' is printed.
// - A beep sound is emitted using the _beep() function when the countdown completes.
// - The _formatTwoDigits() function ensures that minutes and seconds are formatted with two digits for proper display (e.g., '05:03' instead of '5:3').
// - Import statements for 'dart:async' and 'dart:io' enable asynchronous operations and input/output interactions respectively.
