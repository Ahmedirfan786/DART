import 'dart:io';

void main(){
  int? startpoint=int.parse(stdin.readLineSync()!);
  int? endpoint=int.parse(stdin.readLineSync()!);

  if(startpoint > -1 || endpoint >0){

    for (var i = startpoint; i <= endpoint; i++) {
    var check = 0;

    
    for (var j = 2; j < i; j++) {
        if (i % j == 0) {
            check = 1;
            break;
        }
    }


    if (i > 1 && check == 0) {
        print("$i");
    }
}

  }
  else{
    print("Start point can't be in negative integers and endpoint cant be less than or equal to 0");
  }

  
}


// Code Explanation:

// The main() function is the entry point of the Dart program.

// It prompts the user to input the starting point of the range.

// It reads and parses the input as an integer representing the starting point.

// It prompts the user to input the ending point of the range.

// It reads and parses the input as an integer representing the ending point.

// It checks if the input satisfies the condition: startpoint > -1 or endpoint > 0.

// If the condition is satisfied, it iterates through the numbers within the specified range.

// Within each iteration, it initializes a variable 'check' to 0.

// It has an inner loop to check if the current number is prime.

// It divides the current number by numbers starting from 2 up to one less than the current number to check for divisibility.

// If the current number is divisible by any number other than 1 and itself, 'check' is set to 1, indicating that the number is not prime.

// If the current number is greater than 1 and 'check' is 0 (indicating it's prime), it prints the number.

// If the input doesn't satisfy the condition (startpoint > -1 and endpoint > 0), it prints an error message.

// The dart:io library is imported to enable interaction with input and output streams,
// allowing the program to read input from the user via the console and display output.
