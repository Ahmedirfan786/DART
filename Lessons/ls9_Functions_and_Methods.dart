// Lesson 9: Functions and Methods in Dart

// What are Functions?🤔
// Functions are a set of statements that perform a specific task. They are reusable blocks of code.

// What are Mehtods?🤔
// Methods are functions that are associated with objects or classes in object-oriented programming (OOP). In Dart, methods are essentially functions that are defined within classes and can be invoked on instances of those classes.

//⚡⚡ Difference Between Functions And Methods?⚡⚡
//Certainly! Here's a brief description highlighting the key differences between functions and methods:

/* - Functions:⭐⭐⭐
  - Standalone units of code.
  - Defined outside of classes.
  - Can be called from anywhere in the program.
  - Used for general-purpose tasks.
  - Invoked by their name followed by parentheses.

- Methods:⭐⭐⭐⭐
  - Functions associated with classes.
  - Defined within classes.
  - Operate on the data members of the class.
  - Used to define behaviors or actions of objects.
  - Invoked using dot (`.`) notation on objects of the class.

In essence, functions are independent units of code that can be called from anywhere, while methods are functions associated with classes and operate on the data within those classes. */

void main() {
  // Function Declaration and Call
  print('Function Declaration and Call:');
  greet(); // Calling the greet() function

  // Function Parameters
  print('\nFunction Parameters:');
  sayHello('Irfan'); // Calling the sayHello() function with an argument

  // Return Values
  print('\nReturn Values:');
  int result = add(5, 3); // Calling the add() function and storing the result
  print('Result of addition: $result');

  // Method Invocation
  print('\nMethod Invocation:');
  var person = Person();
  person.sayName(); // Invoking the sayName() method of the Person class
}

// Function Declaration
void greet() {
  print('Hello, Guys!');
}

// Function with Parameters
void sayHello(String name) {
  print('Hello, $name!');
}

// Function with Return Value
int add(int a, int b) {
  return a + b;
}

// Class with Method
class Person {
  void sayName() {
    print('My name is Ahmed.');
  }
}
