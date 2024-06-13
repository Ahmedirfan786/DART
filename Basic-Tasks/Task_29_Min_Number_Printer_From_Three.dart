// Printing minimum number without using Dart min() function

import 'dart:io';

void main(){

var minimum;

print("Enter first number :");
int? first=int.parse(stdin.readLineSync()!);

print("Enter second number :");
int? second=int.parse(stdin.readLineSync()!);

print("Enter third number :");
int? third=int.parse(stdin.readLineSync()!);


if(first<second){
  minimum=first;
}
else{
  minimum=second;
}

if(third < minimum){
  minimum=third;
}

print("The lowest number is ===> $minimum");

}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter three numbers.
// The program then compares the entered numbers to find the minimum.
// If the entered word is null, the program prints a message indicating that no input was provided.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.