import 'dart:io';
import 'dart:math';

void main(){
//  Area of Cicle =πr^2
const pi=3.14285714286;
double? radius=double.parse(stdin.readLineSync()!); // in cm


var AOC=pi*pow(radius, 2);
print("The area of circle is $AOC square cm");
}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the radius of the circle in centimeters.
// The provided input is then read and parsed as a double.
// The program calculates the area of the circle using the formula π * r^2.
// Finally, it prints out the calculated area with an appropriate message.
// Import statements for 'dart:io' and 'dart:math' are used to enable interaction with input/output streams and mathematical operations, respectively.


