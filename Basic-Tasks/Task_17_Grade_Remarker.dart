import 'dart:io';

void main(){

  print("Enter your Marks!");
  int? marks=int.parse(stdin.readLineSync()!);

if(marks <=100 && marks >=0){
    
  if(marks >=90){
      print("A* ===> Outstanding");
    }
    else if(marks >=80){
      print("A  ===> Excellent");
    }
    else if(marks >=80){
      print("B  ===> Good");
    }
    else if(marks >=80){
      print("C  ===> Fair");
    }
    else if(marks >=80){
      print("D  ===> Average");
    }
    else if(marks >=80){
      print("E  ===> Need improvment");
    }
    else{
      print("F  ===> Fail");
    }
  }

else{
  print('Marks cant be higher than 100 or lower than 0');
}

  
}




// Explanation:
// The main() function serves as the entry point of the Dart program.
// The program prompts the user to input their marks.
// It then checks if the entered marks are within the valid range of 0 to 100.
// If the marks are within the valid range, the program proceeds to grade them.
// Nested if-else statements are used to determine the grade based on the marks.
// The program prints the corresponding grade message based on the marks.
// If the entered marks are not within the valid range, the program prints an error message indicating that marks can't be higher than 100 or lower than 0.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.