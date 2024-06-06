import 'dart:io';

void main(){
  int? range = int.parse(stdin.readLineSync()!);
  int num1 = 0;
  int num2 = 1;
  int nextterm;

  print('Fibonacci Series till range $range:');

  for (var i = 1; i <= range; i++) {
    print("$num1 =====>position[$i]");
    nextterm = num1 + num2;
    num1 = num2;
    num2 = nextterm;
  }
}


// Code Explanation:

// The main() function is the entry point of the Dart program.

// It prompts the user to input the range (number of Fibonacci numbers to generate).

// It reads and parses the input as an integer representing the range.

// It initializes variables for the first two numbers of the Fibonacci series.

// It prints a message indicating the range of the Fibonacci series.

// It iterates through the range to generate Fibonacci numbers.

// Within each iteration, it calculates the next Fibonacci number using the formula: nextTerm = num1 + num2.

// It prints each Fibonacci number along with its position in the series.

// The dart:io library is imported to enable interaction with input and output streams,
// allowing the program to read input from the user via the console and display output.
