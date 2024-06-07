import 'dart:io';

void main() {
  try {
    print("Enter the startpoint:");
    int? startpoint = int.parse(stdin.readLineSync()!);
    
    print("Enter the endpoint:");
    int? endpoint = int.parse(stdin.readLineSync()!);

    print("The Even and Odd Numbers from $startpoint to $endpoint are:");
    for (var i = startpoint; i <= endpoint; i++) {
      if (i % 2 == 0) {
        print("$i ======>even");
      } else {
        print("$i ======>odd");
      }
    }
  } catch (e) {
    print("Invalid input. Please enter valid integers.");
  }
}


// Code Explanation:

// The main() function is the entry point of the Dart program.

// It prompts the user to input the start and endpoint for the range of numbers.

// It reads and parses the input as integers representing the start and endpoint.

// It prints a message indicating the range of numbers for which even and odd numbers will be printed.

// It iterates through each number in the range.

// Within each iteration, it checks if the current number is even or odd using the modulus operator (%).

// It prints each number along with whether it's even or odd.

// If any exceptions occur during input parsing, it catches and handles them by printing an error message.

// The dart:io library is imported to enable interaction with input and output streams,
// allowing the program to read input from the user via the console and display output.
