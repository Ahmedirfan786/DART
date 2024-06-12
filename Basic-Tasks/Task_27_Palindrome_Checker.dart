import 'dart:io';

bool isPalindrome(String word) {
  String reversedWord = word.split('').reversed.join('');
  return word.toLowerCase() == reversedWord.toLowerCase();
}

void main() {
  stdout.write("Enter a word: ");
  String? word = stdin.readLineSync();

  if (word != null) {
    print("Checking if '$word' is a palindrome: ${isPalindrome(word)}");
  } else {
    print("No input provided.");
  }
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter a word.
// The program then checks if the entered word is not null.
// If the entered word is not null, the program proceeds to determine if it's a palindrome or not.
// The isPalindrome() function is called to perform the palindrome check based on the provided logic.
// If the entered word is null, the program prints a message indicating that no input was provided.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.