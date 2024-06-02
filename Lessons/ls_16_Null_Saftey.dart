// Lesson 16: Dart Null Safety with ? and !

// Introduction to Dart Null Safety:
// Dart Null Safety is a feature introduced to help developers write safer and more robust code by eliminating null reference exceptions. 
// It ensures that variables are non-nullable by default, meaning they cannot hold null values unless explicitly specified.

// Understanding the ? and ! Operators:
// In Dart Null Safety, the `?` and `!` operators play crucial roles in handling nullable types:
// 1. The `?` operator is used to denote that a variable or expression can be nullable.
// 2. The `!` operator is the non-null assertion operator, which asserts that a nullable expression isn't null at runtime.


import 'dart:io';

void main() {
  // Asking for a number
  stdout.write("Enter a number: ");

  // Scanning number
  String? input = stdin.readLineSync();

  // Parsing input with non-null assertion operator
  int? number = int.tryParse(input!);

  // Printing the number or error message
  if (number != null) {
    print("You entered: $number");
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}


// Conclusion:
// Dart Null Safety, along with the `?` and `!` operators, provides developers with powerful tools to ensure their code is more resilient to null reference errors. 
// By embracing null safety, developers can write more reliable Dart applications with fewer runtime exceptions.


// import 'dart:io';: This line imports the dart:io library, which provides classes for performing input and output operations.

// void main() { ... }: This is the entry point of the program. The main() function is executed when the program starts.

// stdout.write("Enter a number: ");: This line prints the message "Enter a number: " to the standard output (usually the console) without adding a new line.

// String? input = stdin.readLineSync();: This line reads a line of input from the standard input (usually from the user typing in the console) and assigns it to the variable input. Since readLineSync() returns a nullable string (String?), input is also nullable.

// int? number = int.tryParse(input!);: This line attempts to parse the string input as an integer using the int.tryParse() method. The ! operator is used here as a non-null assertion operator, which asserts that input is not null before passing it to int.tryParse(). If input is null, this line will throw a runtime error.

// if (number != null) { ... } else { ... }: This is a conditional statement that checks if number is not null. If number is not null, it means that the parsing was successful, and it prints the entered number. Otherwise, it prints an error message indicating that the input is invalid.


// This code prompts the user to enter a number, reads the input from the console, tries to parse it as an integer, and then prints the entered number or an error message depending on whether the parsing was successful.