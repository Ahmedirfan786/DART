import 'dart:io';

void main(){
  // °C = (°F - 32) × 5/9

   print("Enter temprature in fahrenheit");
  double? Fahrenheit=double.parse(stdin.readLineSync()!);

  double Celsius=(Fahrenheit -32)*5/9;

  print("$Fahrenheit °F ====> ${Celsius.toStringAsFixed(2)} °C");


}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the temperature in Fahrenheit.
// These values are then read and parsed as a double.
// After that, the program calculates the temperature in Celsius using the provided formula.
// Finally, it prints out the original temperature in Fahrenheit and the converted temperature in Celsius.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.