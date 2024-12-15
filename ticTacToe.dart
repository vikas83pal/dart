import 'dart:io';

void main() {
  // Empty board
  List<List<String>> initialBoard = List.generate(3, (_) => List.generate(3, (_) => ' '));
  int currentUser = 1;  

  while (true) {
    drawBoard(initialBoard);
    if (isBoardFull(initialBoard)) {
      print("The game is a draw!");
      break;
    }
    drawMove(initialBoard, currentUser);
    currentUser = (currentUser == 1) ? 2 : 1;
  }
}

void drawBoard(List<List<String>> board) {
  print(" --- --- --- ");
  for (var row in board) {
    print("| ${row[0]} | ${row[1]} | ${row[2]} |");
    print(" --- --- --- ");
  }
}

void drawMove(List<List<String>> board, int currentUser) {
  var move = (currentUser == 1) ? 'X' : 'O';
  stdout.write("Player $currentUser ($move), please choose a coordinate (row and column): ");
  List<String> choice = stdin.readLineSync()!.split(" ");
  
  // Validate input
  if (choice.length != 2 || int.tryParse(choice[0]) == null || int.tryParse(choice[1]) == null) {
    print("Invalid input. Please enter two numbers (row and column).");
    return;
  }

  int row = int.parse(choice[0]);
  int col = int.parse(choice[1]);

  if (row < 0 || row >= 3 || col < 0 || col >= 3 || board[row][col] != ' ') {
    print("Invalid move. Cell is either out of bounds or already occupied.");
  } else {
    board[row][col] = move;
  }
}

bool isBoardFull(List<List<String>> board) {
  for (var row in board) {
    for (var cell in row) {
      if (cell == ' ') {
        return false;
      }
    }
  }
  return true;
}
