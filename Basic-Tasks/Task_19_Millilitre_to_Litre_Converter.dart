import 'dart:io';

void main(){

  // 1000 Millilitre = 1 Litre

  print("Enter the Number of Millilitres");
  double? millilitre = double.parse(stdin.readLineSync()!);

  if(millilitre >=0){
  double litre=millilitre/1000;

  print("$millilitre Ml ====> $litre L");
  }
  else{
    print("You cant take millilitres in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of milliliters.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert milliliters to liters.
// It performs the conversion by dividing the number of milliliters by 1000 (since 1 liter = 1000 milliliters).
// The program prints the converted value in liters using string interpolation.
// If the entered value is negative, the program prints an error message indicating that milliliters can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
