// Lesson 11: Collections and Exceptions in Dart

// Introduction to Collections in Dart
// Collections in Dart are containers that hold multiple values.
// They provide convenient ways to store, access, and manipulate data.

// Types of Collections:
// 1. List: Ordered collection of elements, allows duplicates.
// 2. Set: Unordered collection of unique elements.
// 3. Map: Key-value pairs, where each key maps to a value.

// Working with Lists in Dart
// Lists are ordered collections of elements. They can dynamically grow or shrink in size.

// Common List Operations:
// - Accessing Elements
// - Adding and Removing Elements
// - Updating Elements
// - Iterating Over a List

// Understanding Sets in Dart
// Sets are collections of unique elements. They do not allow duplicates and are unordered.

// Common Set Operations:
// - Adding and Removing Elements
// - Checking for Existence
// - Performing Set Operations (Union, Intersection, Difference)

// Exploring Maps in Dart
// Maps are collections of key-value pairs. Each key is unique, and it maps to a corresponding value.

// Common Map Operations:
// - Adding, Updating, and Removing Entries
// - Accessing Values
// - Iterating Over a Map

// Handling Exceptions in Dart
// Exceptions represent errors that occur during program execution.
// Dart provides mechanisms to handle exceptions gracefully.

// Exception Handling:
// - Try-Catch Blocks
// - Throwing Exceptions
// - Finally Block

// Conclusion and Next Steps
// Understanding collections and exception handling in Dart is essential for building robust and efficient applications.
// Collections offer powerful data storage and manipulation capabilities, while exception handling ensures your code can gracefully recover from unexpected errors.

// THE DART DEMONSTRATION CODE

// Example code demonstrating collections and exception handling in Dart

void main() {
  // Lists
  print('Working with Lists:');
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Original List: $numbers');

  // Adding Elements
  numbers.add(6);
  print('List after adding an element: $numbers');

  // Removing Elements
  numbers.removeAt(2);
  print('List after removing an element: $numbers');

  // Updating Elements
  numbers[3] = 10;
  print('List after updating an element: $numbers');

  // Iterating Over a List
  print('Iterating over the list:');
  for (int number in numbers) {
    print(number);
  }

  // Sets
  print('\nUnderstanding Sets:');
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5, 5}; // Note duplicate 5
  print('Original Set: $uniqueNumbers');

  // Adding Elements
  uniqueNumbers.add(6);
  print('Set after adding an element: $uniqueNumbers');

  // Removing Elements
  uniqueNumbers.remove(2);
  print('Set after removing an element: $uniqueNumbers');

  // Checking for Existence
  print('Is 4 in the set? ${uniqueNumbers.contains(4)}');

  // Maps
  print('\nExploring Maps:');
  Map<String, int> studentScores = {
    'Alice': 90,
    'Bob': 85,
    'Charlie': 95,
  };
  print('Original Map: $studentScores');

  // Adding Entries
  studentScores['David'] = 88;
  print('Map after adding an entry: $studentScores');

  // Removing Entry
  studentScores.remove('Bob');
  print('Map after removing an entry: $studentScores');

  // Accessing Values
  print('Charlie\'s score: ${studentScores['Charlie']}');

  // Iterating Over a Map
  print('Iterating over the map:');
  studentScores.forEach((key, value) {
    print('$key: $value');
  });

  // Exception Handling
  print('\nHandling Exceptions:');
  try {
    int result = 10 ~/ 0; // Division by zero
    print('Result: $result');
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Finally block executed.');
  }

  // Throwing Exceptions
  print('\nThrowing Exceptions:');
  int age = 17;
  try {
    if (age < 18) {
      throw FormatException('Underage Exception');
    }
  } catch (e) {
    print('Exception caught: $e');
  }
}
