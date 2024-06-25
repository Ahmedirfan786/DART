import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter the length of the password: ');
  String? input = stdin.readLineSync();
  
  try {
    if (input != null) {
      int length = int.parse(input);
      String password = generatePassword(length);
      print('Generated Password: $password');
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } catch (e) {
    print('Invalid input. Please enter a valid integer.');
  }
}

String generatePassword(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()-_=+[{]}|;:,<.>/?';
  final random = Random();
  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter the desired length of the password.
// The input length is read from the standard input (keyboard) as a String.
// It attempts to parse the input String into an integer using int.parse().
// If successful, it calls generatePassword() to generate a password of the specified length.
// The generated password is then printed to the console.
// If parsing fails or the input is invalid, an error message is printed indicating invalid input.