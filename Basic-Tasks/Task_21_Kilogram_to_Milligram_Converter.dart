import 'dart:io';

void main(){

  // 1 Kilogram = 1000000 Milligrams

  print("Enter the Number of Kilogram");
  double? kilogram= double.parse(stdin.readLineSync()!);

  if(kilogram >=0){
  double milligrams=kilogram*1000000;

  print("$kilogram Kg ====> $milligrams mg");
  }
  else{
    print("You cant take Kilograms in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of kilograms.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert kilograms to milligrams.
// It performs the conversion by multiplying the number of kilograms by 1000000 (since 1 kilogram = 1000000 milligrams).
// The program prints the converted value in milligrams using string interpolation.
// If the entered value is negative, the program prints an error message indicating that kilograms can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.

