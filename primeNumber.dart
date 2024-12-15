import 'dart:io';

void checkprime(int number){
  List<int> num = [
    for(var i=1; i<=number; i++)
      if(number % i == 0) i
    ];

  if(num.length == 2)  {
    print("$number is a prime number");
  }else{
    print("$number is not a prime number");
  }
}
void main() {
  print("Enter the number: ");
  int num = int.parse(stdin.readLineSync()!);
  checkprime(num);
}
