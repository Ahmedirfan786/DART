// Dart Variables

// So What Are Variables🤔
// In programming, a variable is like a container or storage location that holds data. It has a name and can store different types of information, such as numbers, text, or objects. Variables allow programmers to manipulate and work with data dynamically during the execution of a program.

// Variables in dart
// 1. var: Used to declare variables without specifying the data type explicitly. Dart infers the data type based on the assigned value.
// 2. dynamic: Represents any type. Variables declared with dynamic can hold values of any data type, and their type can change during runtime.
// 3. const: Used to declare variables whose value is constant and determined at compile-time. Once assigned, the value of a const variable cannot be changed.

void main() {
  // Example of var keyword
  var age = 25; // Dart infers the data type as int
  print("Example of var:");
  print("Age: $age"); 

  // Example of dynamic keyword
  dynamic myVariable = 3; // myVariable can hold any type of value
  myVariable = "Hello"; // Now myVariable holds a String value
  print("\nExample of dynamic:");
  print("myVariable: $myVariable"); 

  // Example of const keyword
  const PI = 3.14; // The value of PI cannot be changed once assigned
  print("\nExample of const:");
  print("PI: $PI"); 
}