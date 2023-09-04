import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Guess My Number");

  // Get a random number 1 to 100
  int secretNumber = Random().nextInt(100) + 1;
  // Create a guess_counter variable set to 0
  var guessCounter = 0;

  // Start a forever loop
  //    Ask the user to guess a number
  //    Increment the guess_counter by 1
  //    If the number is too high print "Too High"
  //    If the number is too low print "Too Low"
  //    If the number is correct break from this loop

  while (true) {
    int guess = int.parse(stdin.readLineSync()!);
    guessCounter++;
    if (guess < secretNumber) {
      print("Too Low");
    } else if (guess > secretNumber) {
      print("Too High");
    } else {
      break;
    }
  }
  print("Well done.  You took $guessCounter guesses");

  // Congratulate the user and tell them the number of guesses used.

/*
  int secretNumber = Random().nextInt(100) + 1;
  // print(secretNumber);
  var guessCounter = 0;
  while (true) {
    int? guess = int.parse(stdin.readLineSync()!);
    guessCounter += 1;
    // print(guess);
    if (guess > secretNumber) {
      print("Too High!");
    } else if (guess < secretNumber) {
      print("Too Low!");
    } else {
      break;
    }
  }
  print("Well done. You used $guessCounter guesses");
  */
}
