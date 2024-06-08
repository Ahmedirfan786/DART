import 'dart:io';
import 'dart:math';

void main(){
//  Area of Square= one side length^2


double? onesidelength=double.parse(stdin.readLineSync()!); // in cm

var AOS=pow(onesidelength, 2);
print("The area of square is $AOS square cm");
}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the length of one side of the square in centimeters.
// These values are then read and parsed as doubles.
// After that, the program calculates the area of the square using the provided formula.
// Finally, it prints out the calculated area of the square with an appropriate message.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
// Import statement for 'dart:math' is used to enable mathematical calculations like pow().