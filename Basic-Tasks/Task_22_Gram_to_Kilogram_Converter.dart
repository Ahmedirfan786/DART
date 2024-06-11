import 'dart:io';

void main(){

  // 1000 Grams = 1 Kilogram 

  print("Enter the Number of gram");
  double? gram= double.parse(stdin.readLineSync()!);

  if(gram >=0){
  double kilogram=gram/1000;

  print("$gram g ====> $kilogram Kg");
  }
  else{
    print("You cant take grams in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of grams.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert grams to kilograms.
// It performs the conversion by dividing the number of grams by 1000 (since 1 kilogram = 1000 grams).
// The program prints the converted value in kilograms using string interpolation.
// If the entered value is negative, the program prints an error message indicating that grams can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.

