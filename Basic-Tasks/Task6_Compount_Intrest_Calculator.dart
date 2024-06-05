import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter your principal amount: "); 
  double? principalAmount = double.parse(stdin.readLineSync()!); 

  stdout.write("Enter your Interest rate %: "); 
  double? interestRate = double.parse(stdin.readLineSync()!) / 100; //Converting from number to percentage
  
  stdout.write("Enter your time in months: "); 
  int? time = int.parse(stdin.readLineSync()!);

  double interest = principalAmount * pow(1 + interestRate, time) - principalAmount;
  double totalAmount = principalAmount + interest;
  
  print("Your amount after compound interest is $totalAmount");
}


// Code Explanation:

// The main() function is the entry point of the Dart program.

// It prompts the user to enter the principal amount.

// It reads and parses the principal amount as a double.

// It prompts the user to enter the interest rate.

// It reads and parses the interest rate as a double, and converts it from a number to a percentage.

// It prompts the user to enter the time in months.

// It reads and parses the time in months as an integer.

// It calculates the compound interest using the formula: Principal * (1 + Rate)^Time - Principal.

// It calculates the total amount after adding the compound interest to the principal amount.

// It prints the total amount after compound interest.

// The dart:io library is imported to enable interaction with input and output streams,
// allowing the program to read input from the user via the console and display output.

// The dart:math library is imported to use mathematical functions such as pow,
// which is used here to calculate compound interest.
