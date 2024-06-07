import 'dart:io';

void main(){
//  Area of Triangle =1/2(b x h)


double? base=double.parse(stdin.readLineSync()!); // in cm
double? height=double.parse(stdin.readLineSync()!); // in cm


var AOT=0.5*(base*height);
print("The area of triangle is $AOT square cm");
}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the base and height of the triangle in centimeters.
// These values are then read and parsed as doubles.
// After that, the program calculates the area of the triangle using the provided formula.
// Finally, it prints out the calculated area with an appropriate message.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.