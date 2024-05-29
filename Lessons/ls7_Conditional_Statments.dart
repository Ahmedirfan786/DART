// Dart Conditional Statements

// What are Conditional Statements?🤔
// Conditional statements are used in programming to execute different blocks of code based on certain conditions. 
// In Dart, conditional statements allow you to control the flow of your program by evaluating expressions and executing specific code based on whether the conditions are true or false.

void main() {
  // If Statement
  int x = 10;

  if (x > 5) {
    print('x is greater than 5');
  }

  // If-else Statement
  String name = "Ahmed";

  if (name == "Ahmed") {
    print('The name is Ahmed');
  } else {
    print('The name is not Ahmed');
  }

  // If-else if-else Statement
  int num = 75;

  if (num > 0) {
    print('Positive');
  } else if (num < 0) {
    print('Negative');
  } else {
    print('Zero');
  }

  // Switch Statement
  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid grade');
  }
}
