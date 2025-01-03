import 'dart:io';
import 'dart:math';

void isArmstrong(int num) {
  int sum = 0;
  int oriNum = num;
  int digits = num.toString().length;
  while (num > 0) {
    int digit = num % 10;
    sum += pow(digit, digits).toInt();
    num ~/= 10;
  }

  sum == oriNum
      ? print("$oriNum is an Armstrong number")
      : print("$oriNum is not an Armstrong number");
}

void main() {
  print("Enter the number:");
  int num = int.parse(stdin.readLineSync()!);
  isArmstrong(num);
}
