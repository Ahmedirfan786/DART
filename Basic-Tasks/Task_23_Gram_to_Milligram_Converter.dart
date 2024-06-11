import 'dart:io';

void main(){

  // 1 gram = 1000 Milligrams

  print("Enter the Number of gram");
  double? gram= double.parse(stdin.readLineSync()!);

  if(gram >=0){
  double milligrams=gram*1000;

  print("$gram g ====> $milligrams mg");
  }
  else{
    print("You cant take grams in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of grams.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert grams to milligrams.
// It performs the conversion by multiplying the number of grams by 1000 (since 1 gram = 1000 milligrams).
// The program prints the converted value in milligrams using string interpolation.
// If the entered value is negative, the program prints an error message indicating that grams can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.

