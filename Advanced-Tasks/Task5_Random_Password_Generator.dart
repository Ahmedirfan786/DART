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
