// Lesson 12: Asynchronous and Synchronous Programming in Dart

//Its a dart package we will discuss about dart packages later
import 'dart:async';

void main() {
  // Synchronous Programming
  print('Example of Synchronous Programming:');
  printSyncOperations();

  // Asynchronous Programming
  print('\nExample of Asynchronous Programming:');
  printAsyncOperations();

  // Example of Creating and Using Future in Dart
  print('\nExample of Creating and Using Future in Dart:');
  getUserData().then((value) {
    print('Start');
    print(value);
    print('End');
  });
}

// Function to demonstrate synchronous operations
void printSyncOperations() {
  print("First Operation");
  print("Second Operation");
  print("Third Operation");
}

// Function to demonstrate asynchronous operations
void printAsyncOperations() async {
  print("First Operation");
  await Future.delayed(Duration(seconds: 2), () => print("Second Operation"));
  print("Third Operation");
}

// Function to simulate fetching user data asynchronously
Future<String> getUserData() async {
  return await Future.delayed(Duration(seconds: 3), () => "User Data");
}
