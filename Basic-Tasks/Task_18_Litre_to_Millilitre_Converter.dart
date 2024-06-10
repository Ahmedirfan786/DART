import 'dart:io';

void main(){

  // 1 Litre = 1000 Millilitre

  print("Enter the Number of Litres");
  double? litre= double.parse(stdin.readLineSync()!);

  if(litre >=0){
  double millilitre=litre*1000;

  print("$litre L ====> $millilitre Ml");
  }
  else{
    print("You cant take litres in negative values");
  }


}

// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input the number of litres.
// It then checks if the entered value is greater than or equal to 0.
// If the input is not negative, the program proceeds to convert litres to millilitres.
// It performs the conversion by multiplying the number of litres by 1000 (since 1 litre = 1000 millilitres).
// The program prints the converted value in millilitres using string interpolation.
// If the entered value is negative, the program prints an error message indicating that litres can't be negative.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.