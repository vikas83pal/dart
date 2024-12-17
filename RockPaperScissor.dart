void game() {
  List<String> choices = ['rock', 'paper', 'scissor'];

  var rand = Random();

  print("Enter the choice");
  String user = stdin.readLineSync()!.toLowerCase();

  String computer = choices[rand.nextInt(2)];
  print("Computer choice: $computer");

  if (user == computer) {
    print("it is tie");
  } else if (user == 'rock' && computer == 'scissor' ||
      user == 'paper' && computer == 'rock' ||
      user == 'scissor' && computer == 'paper') {
    print("you win");
  } else {
    print("computer win");
  }
}

void main() {
  game();
}
