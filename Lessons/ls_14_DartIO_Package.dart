// Lesson 14: Dart I/O Package

// Introduction to Dart I/O Package:
// The Dart I/O package equips developers with tools to interact with files, directories, and other input/output operations efficiently. 
// One of the crucial functionalities it provides is asynchronous reading from input streams, which is particularly useful for handling user input in interactive applications.

// Understanding readLineAsync:
// Among the functionalities offered by the Dart I/O package is the readLineAsync method. 
// This method is designed to asynchronously read input from a stream until a newline character is encountered. 

// Importing dart:io file
import 'dart:io';

void main() {
  // Asking for name
  stdout.write("Enter your name: ");

  // Scanning name
  String? name = stdin.readLineSync();

  // Asking for favorite number
  stdout.write("Enter your favorite number: ");

  // Scanning number
  int? number = int.parse(stdin.readLineSync()!);
  // Here ? and ! are for null safety we will discuss it later in lesson specifically on null saftey

  // Printing name and number
  stdout.write("Hello, $name! Your favorite number is $number\n");
}




// Benefits of Asynchronous I/O Operations:
// Asynchronous I/O operations, such as readLineAsync, offer several advantages, including non-blocking execution, improved performance, and scalability.

// Conclusion:
// The Dart I/O package, with its readLineAsync method and other utilities, empowers developers to build efficient and responsive applications that interact seamlessly with input/output streams. 
// By embracing asynchronous programming paradigms, developers can create high-performance Dart applications capable of handling various I/O tasks with ease.