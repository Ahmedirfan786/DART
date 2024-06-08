import 'dart:io';

void main(){
//  Area of Rectangle= length x width


double? length=double.parse(stdin.readLineSync()!); // in cm
double? width=double.parse(stdin.readLineSync()!); // in cm


var AOR=length*width;
print("The area of square is $AOR square cm");
}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the length and width of the rectangle in centimeters.
// These values are then read and parsed as doubles.
// After that, the program calculates the area of the rectangle using the provided formula.
// Finally, it prints out the calculated area of the rectangle with an appropriate message.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
