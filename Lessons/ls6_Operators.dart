// Dart Operators

// What Are Operators?🤔
// Operators in programming are symbols or keywords that perform operations on operands. 
// Operands can be variables, values, or expressions. Operators define how the operands are manipulated to produce a result.
// Dart, like many other programming languages, supports various types of operators, including arithmetic, assignment, comparison, logical, and bitwise operators.

void main() {
  // Arithmetic Operators
  int a = 10;
  int b = 5;
  print('Arithmetic Operators:');
  print('Addition: ${a + b}'); // Addition
  print('Subtraction: ${a - b}'); // Subtraction
  print('Multiplication: ${a * b}'); // Multiplication
  print('Division: ${a / b}'); // Division
  print('Floor Division: ${a ~/ b}'); // Floor Division
  print('Modulus: ${a % b}'); // Modulus (Remainder of division)
  
// Assignment Operators
// Assignment operators are used to assign values to variables.
int x = 10;
int y = 5;
print('\nAssignment Operators:');
print('Original Value of x: $x');
x += y; // Equivalent to: x = x + y
print('After Addition: $x');
x -= y; // Equivalent to: x = x - y
print('After Subtraction: $x');
x *= y; // Equivalent to: x = x * y
print('After Multiplication: $x');
// x /= y; // Error: Can't assign double to int
x ~/= y; // Equivalent to: x = x ~/ y (Floor Division)
print('After Floor Division: $x');
x %= y; // Equivalent to: x = x % y
print('After Modulus: $x');
  
  // Comparison Operators
  // Comparison operators are used to compare two values or expressions.
  int p = 10;
  int q = 20;
  print('\nComparison Operators:');
  print('$p == $q : ${p == q}'); // Equal to
  print('$p != $q : ${p != q}'); // Not equal to
  print('$p > $q : ${p > q}'); // Greater than
  print('$p < $q : ${p < q}'); // Less than
  print('$p >= $q : ${p >= q}'); // Greater than or equal to
  print('$p <= $q : ${p <= q}'); // Less than or equal to
  
  // Type Test Operator
  // The type test operator is used to check the type of an object at runtime.
  Object obj = 'Hello';
  print('\nType Test Operator:');
  print('Is obj a String? ${obj is String}'); // Type test
  
  // Logical Operators
  // Logical operators are used to combine multiple conditions.
  bool condition1 = true;
  bool condition2 = false;
  print('\nLogical Operators:');
  print('AND Operator: ${condition1 && condition2}'); // AND Operator
  print('OR Operator: ${condition1 || condition2}'); // OR Operator
  print('NOT Operator: ${!condition1}'); // NOT Operator
  
  // Unary Operators
  // Unary operators are applied to a single operand.
  int number = 10;
  print('\nUnary Operators:');
  print('Original Value of number: $number');
  number++; // Increment by 1
  print('After Increment: $number');
  number--; // Decrement by 1
  print('After Decrement: $number');
  
  // Conditional Operator (Ternary Operator)
  // The conditional operator is a shorthand for the if-else statement.
  int marks = 80;
  String result = marks >= 40 ? 'Pass' : 'Fail';
  print('\nConditional Operator:');
  print('Result: $result');
}
