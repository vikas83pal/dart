import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random 4-digit number
  String secretNumber = generateSecretNumber();

  int guessCount = 0;
  while (true) {
    stdout.write("Enter your guess (4-digit number): ");
    String userGuess = stdin.readLineSync()!;

    // Validate input
    if (userGuess.length != 4 || int.tryParse(userGuess) == null) {
      print("Please enter a valid 4-digit number.");
      continue;
    }

    guessCount++;

    // Get the feedback for cows and bulls
    var result = checkCowsAndBulls(secretNumber, userGuess);

    print("Cows: ${result[0]}, Bulls: ${result[1]}");

    if (result[0] == 4) {
      print("Congratulations! You've guessed the correct number in $guessCount guesses.");
      break;
    }
  }
}

// Function to generate a random 4-digit number as a string
String generateSecretNumber() {
  Random rand = Random();
  int num = rand.nextInt(9000) + 1000; // Ensure it's a 4-digit number
  return num.toString();
}

// Function to check the number of cows and bulls
List<int> checkCowsAndBulls(String secretNumber, String guess) {
  int cows = 0;
  int bulls = 0;

  List<bool> secretUsed = List.filled(4, false);
  List<bool> guessUsed = List.filled(4, false);

  // Check for cows first (correct digit in correct place)
  for (int i = 0; i < 4; i++) {
    if (secretNumber[i] == guess[i]) {
      cows++;
      secretUsed[i] = true;
      guessUsed[i] = true;
    }
  }

  // Check for bulls (correct digit but wrong place)
  for (int i = 0; i < 4; i++) {
    if (!guessUsed[i]) {
      for (int j = 0; j < 4; j++) {
        if (!secretUsed[j] && guess[i] == secretNumber[j]) {
          bulls++;
          secretUsed[j] = true;
          break;
        }
      }
    }
  }

  return [cows, bulls];
}
