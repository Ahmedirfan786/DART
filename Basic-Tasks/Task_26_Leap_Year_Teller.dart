import 'dart:io';

void isLeapYear(int year) {
  if ((year % 100 == 0 ? year % 400 == 0 : year % 4 == 0)) {
    print("Input year: $year is a Leap Year");
  } else {
    print("Input year: $year is not a Leap Year");
  }
}

void main() {

  print("Enter the year :");
  int? inputYear = int.parse(stdin.readLineSync()!);

  if(inputYear >=0){
  isLeapYear(inputYear);
  }
  else{
    print("$inputYear You cant take years in negative");
  }
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter a year.
// The program then checks if the entered year is non-negative.
// If the entered year is non-negative, the program proceeds to determine if it's a leap year or not.
// The isLeapYear() function is called to perform the leap year check based on the provided logic.
// If the entered year is negative, the program prints a message informing the user that negative years are not allowed.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
