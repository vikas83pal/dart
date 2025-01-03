import 'dart:io';

void disp(int n) {
  for (int i = 0; i < n; i++) {
    // Print the top border of each row
    stdout.writeln(" ---" * n);

    // Print the vertical dividers and spaces for each row
    stdout.write("|");
    for (int j = 0; j < n; j++) {
      stdout.write("   |");
    }
    stdout.writeln(); // Move to the next line
  }

  // Print the bottom border of the board
  stdout.writeln(" ---" * n);
}

void main() {
  stdout.writeln("Enter the number:");
  int num = int.parse(stdin.readLineSync()!);
  disp(num);
}
