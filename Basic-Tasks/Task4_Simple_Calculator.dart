import 'dart:io';

void main() {
  stdout.write("Enter your First Operator: "); 
  double? firstoperand = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Second Operator: "); 
  double? secondoperand = double.parse(stdin.readLineSync()!); 

  stdout.write("Choose any operator from these + - * / : "); 
  String? theoperator = stdin.readLineSync(); 

  if(theoperator == "+"){
    double add = firstoperand + secondoperand; 
    print("$firstoperand + $secondoperand = $add ");
  }
  else if(theoperator == "-"){
    double subtract = firstoperand - secondoperand; 
    print("$firstoperand - $secondoperand = $subtract ");
  }
  else if(theoperator == "*"){
    double multiply = firstoperand * secondoperand; 
    print("$firstoperand * $secondoperand = $multiply ");
  }
  else if(theoperator == "/"){
    if (secondoperand != 0) {
      double divide = firstoperand / secondoperand; 
      print("$firstoperand / $secondoperand = $divide ");
    } else {
      print("Error: Division by zero is not allowed.");
    }
  }
  else{
    print("You chose an invalid operator");
  }
}


// Code Explaination

// It imports the Dart I/O library to interact with input and output streams.

// The main() function is the entry point of the Dart program.

// It prompts the user to enter the first operand.

// It reads and parses the first operand as a double.

// It prompts the user to enter the second operand.

// It reads and parses the second operand as a double.

// It prompts the user to choose an operator (+, -, *, /).

// It reads the operator input.

// Based on the chosen operator, it performs the corresponding arithmetic operation (+, -, *, /) and prints the result.

// If the user chooses division (/) and the second operand is zero, it prints an error message indicating that division by zero is not allowed.

// If the user enters an invalid operator, it prints a message indicating an invalid operator was chosen.

// The main() function ends.



