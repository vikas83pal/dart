import 'dart:io';
import 'dart:math';

String getComputerChoice() {
  // Generate a random number between 0 and 2 to represent rock, paper, or scissors
  Random random = Random();
  int choice = random.nextInt(3);

  if (choice == 0) {
    return 'Rock';
  } else if (choice == 1) {
    return 'Paper';
  } else {
    return 'Scissors';
  }
}

String determineWinner(String userChoice, String computerChoice) {
  if (userChoice == computerChoice) {
    return 'It\'s a tie!';
  }

  if ((userChoice == 'Rock' && computerChoice == 'Scissors') ||
      (userChoice == 'Paper' && computerChoice == 'Rock') ||
      (userChoice == 'Scissors' && computerChoice == 'Paper')) {
    return 'You win!';
  } else {
    return 'You lose!';
  }
}

void main() {
  print("Welcome to Rock, Paper, Scissors!");
  print("Enter your choice (Rock, Paper, or Scissors):");
  String? userChoice = stdin.readLineSync()?.trim();

  if (userChoice == null || !(['Rock', 'Paper', 'Scissors'].contains(userChoice))) {
    print('Invalid choice. Please enter Rock, Paper, or Scissors.');
    return;
  }

  // Get computer's random choice
  String computerChoice = getComputerChoice();

  print("Computer chose: $computerChoice");

  // Determine and display the result
  String result = determineWinner(userChoice, computerChoice);
  print(result);
}
