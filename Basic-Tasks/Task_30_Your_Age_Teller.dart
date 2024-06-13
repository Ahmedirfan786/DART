import 'dart:io';

  // The main() function serves as the entry point of the Dart program.
void main() {
  
  // It prompts the user to enter their date of birth in the format YYYY-MM-DD.
  stdout.write("Enter your date of birth (YYYY-MM-DD): ");
  // This part of the code reads the user input from the console and stores it in the variable 'input'.
  String? input = stdin.readLineSync();

  // If the entered word is null or empty, the program prints a message indicating that no input was provided and exits the program.
  if (input == null || input.isEmpty) {
    print("No input provided. Exiting...");
    return;
  }

  DateTime? dob = DateTime.tryParse(input);

  // This part of the code tries to parse the user input string into a DateTime object using the tryParse() method. If parsing is successful, it assigns the parsed DateTime object to the variable 'dob'. If parsing fails (e.g., due to an invalid date format), 'dob' will be null.
  if (dob == null) {
    print("Invalid date format. Please enter date in YYYY-MM-DD format.");
    return;
  }

  DateTime now = DateTime.now();
  Duration difference = now.difference(dob);

  int years = difference.inDays ~/ 365;
  int months = (difference.inDays % 365) ~/ 30;
  int weeks = ((difference.inDays % 365) % 30) ~/ 7;
  int days = ((difference.inDays % 365) % 30) % 7;

  print("You are $years years, $months months, $weeks weeks, and $days days old.");
}
