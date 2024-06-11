import 'dart:io';

void main(){

  // 1 Kilogram = 1000 Grams

  print("Enter the Number of Kilogram");
  double? kilogram= double.parse(stdin.readLineSync()!);

  if(kilogram >=0){
  double grams=kilogram*1000;

  print("$kilogram Kg ====> $grams g");
  }
  else{
    print("You cant take kilograms in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of kilograms.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert kilograms to grams.
// It performs the conversion by multiplying the number of kilograms by 1000 (since 1 kilogram = 1000 grams).
// The program prints the converted value in grams using string interpolation.
// If the entered value is negative, the program prints an error message indicating that kilograms can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
