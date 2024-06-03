import 'dart:io';

void main() {
  const username = "Tonystark";
  const password = "Jarvis@ironman1";

  print("Be Strong Like Iron");

  stdout.write("Enter Your username: "); 
  String? checkUsername = stdin.readLineSync(); 

  stdout.write("Enter Your password: "); 
  String? checkPassword = stdin.readLineSync(); 
  if (checkUsername == username && checkPassword == password) {
    print("....Hey Stark Jarvis here...."); 
  } else {
    print("...Jarvis says invalid credentials..."); 
  }
}

// The main() function is the entry point of the Dart program.

// We import the dart:io library to access classes like stdin and stdout for reading input from the user and printing output to the console.

// Two constant variables username and password are declared with the values "Tonystark" and "Jarvis@ironman1" respectively.

// A message "Be Strong Like Iron" is printed to the console using the print() function.

// The user is prompted to enter their username using stdout.write() followed by reading the input using stdin.readLineSync() and storing it in the variable checkUsername.

// Similarly, the user is prompted to enter their password, and the input is stored in the variable checkPassword.

// An if statement is used to check if the entered username (checkUsername) and password (checkPassword) match the predefined values (username and password).

// If the credentials match, a message "....Hey Stark Jarvis here...." is printed to the console; otherwise, a message "...Jarvis says invalid credentials..." is printed.

// The else block is executed when the condition in the if statement (i.e., checkUsername == username && checkPassword == password) evaluates to false.

// In this case, it means that the entered username or password (or both) did not match the predefined values.

// Inside the else block, a message "...Jarvis says invalid credentials..." is printed to the console using the print() function.

// This message indicates to the user that the entered credentials are invalid.