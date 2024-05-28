// Dart Data Types

// What Are Data Types?🤔
// Data types in programming define the kind of data that a variable can hold. They specify the types of values that can be stored, such as strings, numbers, etc., and determine the operations that can be performed on those values. It's important to note that different programming languages support various data types, each with its own set of characteristics and capabilities.

// Data Types in Dart

// The Data Types in Dart Could be classified into two categories:
// 1) Primitive Data Type:
//    int: Represents integers (whole numbers) without any fractional part.
//    double: Represents floating-point numbers (numbers with a fractional part).
//    num: Represents both integers and floating-point numbers. It's a supertype of both int and double.
//    String: Represents a sequence of characters, numbers, symbols.
//    bool: Represents a boolean value, which can be either true or false.
// 2) Composite Data Type:

//    List: Represents an ordered collection of elements. Lists in Dart can have elements of different types or can be homogeneous.
// Example:
// List<int> numbers = [1, 2, 3, 4, 5];
// List<String> names = ['Alice', 'Bob', 'Charlie'];
// List<dynamic> mixedList = [1, 'two', true];

//    Map: Represents a collection of key-value pairs where each key is unique. It's also known as an associative array or dictionary in other programming languages.
// Example:
// Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};


void main() {
  // The Primitive Data Types
  int age = 25;
  double height = 5.8;
  num distance = 10; // num can hold both integer and double values
  String name = 'Alice';
  bool isStudent = true;

  // The Composite Data Types
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  List<dynamic> mixedList = [1, 'two', true];

  Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};

  // Printing all data types
  print('Primitive Data Types:');
  print('Age: $age');
  print('Height: $height');
  print('Distance: $distance');
  print('Name: $name');
  print('Is Student: $isStudent');

  print('\nComposite Data Types:');
  print('Numbers: $numbers');
  print('Names: $names');
  print('Mixed List: $mixedList');
  print('Ages: $ages');




  // The code below is used to Demonstrate String interpolation
  print('\nString Interpolation:');
  print('My name is $name and I am $age years old.');


  // The code below is used to Demonstrate String concatenation
  String concatenatedString = 'My name is ' + name + ' and I am ' + age.toString() + ' years old.';
  // age.toString() is used to convert the integer variable 'age' into a string representation before concatenation.
  print('\nString Concatenation:');
  print(concatenatedString);
}

