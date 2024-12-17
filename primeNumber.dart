import 'dart:io';
import 'dart:math';

bool isPrime(var num){
  if(num < 2) return false;
  for(var i = 2; i<=sqrt(num).toInt(); i++){
    if(num % i == 0) return false;
  }
  return true;
}
main() {
  print("Enter the number");
  var num = int.parse(stdin.readLineSync()!);
  if (isPrime(num)) {
    print("$num is a prime number");
  } else {
    print("$num is not a prime number");
  }
}
