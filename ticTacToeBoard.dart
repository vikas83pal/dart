import 'dart:io';

void disp(int n) {
  for (var i = 1; i <= n - 1; i++) {
    // Print the horizontal line (---)
    print(" --- " * (n - 1));

    if (i < n) {
      print("|   " * (n - 1) + "  |");
    }
  }

  // Print the final horizontal line after the last row
  print(" --- " * (n - 1));
}

void main() {
  print("Enter the number of board size (n x n): ");
  int n = int.parse(stdin.readLineSync()!);
  disp(n);
}
