import 'dart:io';

void main() {
  print("Enter the number:");
  String? num;
  while (num == null) {
    num = stdin.readLineSync();
  }
  int number = int.parse(num);
  if (number < 0) {
    print("Invalid number");
  } else {
    print("$number divisors are");
    for (var i = 1; i <= number; i++) {
      if (number % i == 0) {
        print(i);
      }
    }
  }
}
