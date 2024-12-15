import 'dart:io';

void main() {
  print("Enter The Number:");
  String? num;
  while (num == null) {
    num = stdin.readLineSync();
  }

  try{
    int number = int.parse(num);
    if(number % 2 == 0){
      print("$number is even");
    }else{
      print("$number is odd");
    }
  }catch(e){
    print("Number Format Exception $e");
  }
}
