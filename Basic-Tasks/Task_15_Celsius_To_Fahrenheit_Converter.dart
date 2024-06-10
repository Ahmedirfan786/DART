import 'dart:io';

void main(){
  //  °F = (9/5 × °C) + 32


  print("Enter temprature in celsius");
  double? Celsius=double.parse(stdin.readLineSync()!);

  double Fahrenheit=(9/5 * Celsius) +32;

  print("$Celsius °C ====> ${Fahrenheit.toStringAsFixed(2)} °F");


}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to input the temperature in Celsius.
// These values are then read and parsed as a double.
// After that, the program calculates the temperature in Fahrenheit using the provided formula.
// Finally, it prints out the original temperature in Celsius and the converted temperature in Fahrenheit.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.