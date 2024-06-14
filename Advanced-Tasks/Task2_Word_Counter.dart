import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  
  Map<String, int> wordCount = {};
  
  // Split the input string into words
  List<String> words = input.toLowerCase().split(RegExp(r"\W+"));
  
  // Count occurrences of each word
  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }
  
  print("Word count:");
  wordCount.forEach((word, count) {
    print("$word: $count");
  });
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It reads a line of input from the standard input (keyboard).
// The input string is then processed to count the occurrences of each word.
// The program converts the input string to lowercase to ensure case-insensitive counting.
// It splits the input string into words using regular expressions, treating any non-word character as a delimiter.
// Each word's count is stored in a map, where the word serves as the key and its count as the value.
// The program then prints out each word along with its count.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.