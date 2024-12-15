import 'dart:io';

List<int> generateNumber(int number) {
  List<int> fibNum = [];
  if (number <= 0) return fibNum;
  if (number == 1) return [0];

  fibNum.add(0);
  fibNum.add(1);

  for (var i = 2; i < number; i++) {
    fibNum.add(fibNum[i - 1] + fibNum[i - 2]);
  }

  return fibNum;
}

void main() {
  print("Enter how many would you like to generate the fibnaccio number");
  int n = int.parse(stdin.readLineSync()!);

  List<int> fibNum = generateNumber(n);

  print("The Fibnaciio numebers are: $fibNum");
}
