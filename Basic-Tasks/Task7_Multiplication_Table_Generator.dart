import 'dart:io';

void main(){

stdout.write("Enter which number table you wanna generate: "); 
int? timestable=int.parse(stdin.readLineSync()!); 

stdout.write("Enter start point: "); 
int? startpoint=int.parse(stdin.readLineSync()!);

stdout.write("Enter end point: "); 
int? endpoint=int.parse(stdin.readLineSync()!);

for(var i=startpoint; i<=endpoint; i++){
  var multiply=timestable*i;
  print("$timestable * $i = $multiply")
}

}


// Code Explanation:

// The main() function is the entry point of the Dart program.

// It prompts the user to enter which number table they want to generate.

// It reads and parses the input as an integer representing the desired multiplication table.

// It prompts the user to enter the start point for the multiplication table.

// It reads and parses the input as an integer representing the start point.

// It prompts the user to enter the end point for the multiplication table.

// It reads and parses the input as an integer representing the end point.

// It iterates over each number within the specified range (from startpoint to endpoint).

// It calculates the product of the current number in the range and the specified multiplication table.

// It prints the multiplication expression and its result.

// The dart:io library is imported to enable interaction with input and output streams,
// allowing the program to read input from the user via the console and display output.