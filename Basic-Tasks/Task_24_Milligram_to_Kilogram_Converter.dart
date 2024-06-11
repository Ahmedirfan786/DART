import 'dart:io';

void main(){

  // 1000000 Milligrams = 1 Kilogram 

  print("Enter the Number of milligram");
  double? milligram= double.parse(stdin.readLineSync()!);

  if(milligram >=0){
  double kilogram=milligram/1000000;

  print("$milligram mg ====> $kilogram Kg");
  }
  else{
    print("You cant take milligrams in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of milligrams.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert milligrams to kilograms.
// It performs the conversion by dividing the number of milligrams by 1000000 (since 1 kilogram = 1000000 milligrams).
// The program prints the converted value in kilograms using string interpolation.
// If the entered value is negative, the program prints an error message indicating that milligrams can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.
