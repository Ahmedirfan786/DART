import 'dart:io';
import 'dart:math';

void main() {
  bool playAgain = true;
  
  while (playAgain) {
    int randomNumber = Random().nextInt(10) + 1;
    int attempts = 0;
    bool correctGuess = false;
    
    print('Welcome to the Number Guessing Game!');
    print('I have chosen a number between 1 and 10. Guess what it is.');

    while (!correctGuess && attempts < 5) {
      attempts++;
      stdout.write('Attempt $attempts: Enter your guess (1-10): ');
      String? input = stdin.readLineSync();
      
      if (input == null) {
        print('Invalid input. Please enter a number.');
        continue;
      }
      
      try {
        int guess = int.parse(input);
        
        if (guess < 1 || guess > 10) {
          print('Please enter a number between 1 and 10.');
        } else if (guess == randomNumber) {
          correctGuess = true;
          print('Congratulations! You guessed the correct number in $attempts attempts.');
        } else {
          print('Wrong guess. Try again.');
        }
      } catch (e) {
        print('Invalid input. Please enter a number.');
      }
    }
    
    if (!correctGuess) {
      print('Game over! The number was $randomNumber.');
    }
    
    stdout.write('Do you want to play again? (yes/no): ');
    String? playAgainInput = stdin.readLineSync()?.toLowerCase();
    
    if (playAgainInput != 'yes') {
      playAgain = false;
      print('Thanks for playing! Goodbye.');
    }
  }
}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It initializes variables to control the game flow: playAgain to manage game restarts,
// randomNumber to hold the randomly generated number, attempts to count the user's guesses,
// and correctGuess to track whether the user has guessed the number correctly.
// 
// The outer while loop, controlled by playAgain, allows the game to restart if the user chooses to play again.
// Inside the loop, a new randomNumber is generated for each game session between 1 and 10 using Random().nextInt(10) + 1.
// 
// The game starts by printing a welcome message and instructions to the user.
// 
// The inner while loop continues until the user guesses the correct number (correctGuess becomes true)
// or exceeds 5 attempts (attempts >= 5).
// For each attempt, the user is prompted to enter their guess (between 1 and 10).
// 
// The input is validated to ensure it's a number within the valid range (1-10).
// If the input is invalid (null, not a number, or out of range), an appropriate error message is displayed.
// 
// If the user guesses correctly, correctGuess is set to true, and a congratulatory message is printed,
// indicating the number of attempts taken.
// 
// If the user exhausts all attempts without guessing correctly, a message is printed revealing the correct number.
// 
// After each game session, the user is prompted whether they want to play again.
// The input is validated to continue the loop for another game session (input 'yes') or exit the loop (input 'no').
// 
// Once the user chooses not to play again, the program prints a farewell message and exits gracefully.