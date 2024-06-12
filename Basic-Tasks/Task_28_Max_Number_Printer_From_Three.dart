// Printing maximum number without using Dart max() function

import 'dart:io';

void main(){

var maximum;

print("Enter first number :");
int? first=int.parse(stdin.readLineSync()!);

print("Enter second number :");
int? second=int.parse(stdin.readLineSync()!);

print("Enter third number :");
int? third=int.parse(stdin.readLineSync()!);


if(first>second){
  maximum=first;
}
else{
  maximum=second;
}

if(third > maximum){
  maximum=third;
}

print("The highest number is ===> $maximum");

}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter three numbers.
// The program then compares the entered numbers to find the maximum.
// If the entered word is null, the program prints a message indicating that no input was provided.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.