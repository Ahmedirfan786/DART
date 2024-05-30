// Lesson 8: Loops in Dart

// What are Loops?🤔
// Loops are used in programming to execute a block of code repeatedly as long as a condition is true.
// There are 4 types of loops in dart
// 1.For loop
// 2.For in loop
// 3.While loop
// 4.Do While loop

void main() {
  // 1.For Loop
  print('For Loop:');
  // Syntax: for (initialization; condition; update)
  // Initialization: int i = 0; (Initializing loop control variable)
  // Condition: i < 5; (Checking if the condition is true to continue looping)
  // Update: i++; (Updating loop control variable after each iteration)
  for (int i = 0; i < 5; i++) {
    print('Iteration $i');
  }

  // 2.For-in Loop
  print('\nFor-in Loop:');
  // Syntax: for (variable in iterable)
  // Variable: int number (Variable to represent each element of the iterable)
  // Iterable: List<int> numbers (Collection of elements over which the loop iterates)
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // 3.While Loop
  print('\nWhile Loop:');
  // Syntax: while (condition)
  // Condition: count < 5 (Expression to be evaluated before each iteration)
  int count = 0; // Initializing loop control variable
  while (count < 5) {
    print('Count: $count');
    count++; // Updating loop control variable after each iteration
  }

  // 4.Do-While Loop
  print('\nDo-While Loop:');
  // Syntax: do { // Code } while (condition);
  // Code: print('Number: $num'); num--; (Block of code to be executed)
  // Condition: num > 0 (Expression to be evaluated after each iteration)
  int num = 5; // Initializing loop control variable
  do {
    print('Number: $num');
    num--; // Updating loop control variable after each iteration
  } while (num > 0);
}
