import 'dart:io';

void main() {
  stdout.write("Enter your principal amount: "); 
  double? principalAmount = double.parse(stdin.readLineSync()!); 

  stdout.write("Enter your Interest rate %: "); 
  double? interestRate = double.parse(stdin.readLineSync()!) / 100; //Converting from number to percentage
  
  stdout.write("Enter your time in months: "); 
  int? time = int.parse(stdin.readLineSync()!);

  double interest = principalAmount * interestRate * time;
  double totalAmount = principalAmount + interest;
  
  print("Your amount after interest is $totalAmount");
}

// Code Explanation:

// It imports the Dart I/O library to interact with input and output streams.

// The main() function is the entry point of the Dart program.

// It prompts the user to enter the principal amount.

// It reads and parses the principal amount as a double.

// It prompts the user to enter the interest rate.

// It reads and parses the interest rate as a double, and converts it from a number to a percentage.

// It prompts the user to enter the time in months.

// It reads and parses the time in months as an integer.

// It calculates the interest using the formula: Principal * Rate * Time.

// It calculates the total amount after adding the interest to the principal amount.

// It prints the total amount after interest.
