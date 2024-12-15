import 'dart:io';
import 'dart:math';

void main(){
  print("To Exit The Game Please Type exit on keyboard");
  guessGame();
}

void guessGame(){
  final ran = Random();
  int ranNum = ran.nextInt(100);
  int attempt = 0;

  print("Enter the number Between 1 to 100");
  while(true) {
    attempt++;
    String? numin = stdin.readLineSync();

    if(numin?.toLowerCase() == 'exit'){
      print("\nBye\n");
      break;
    }

    int num;
    try{
      num = int.parse(numin!);
    }catch(e){
      print("Invalid Number, please enter the valid number");
      continue;
    }

    if(num < 0 || num > 100){
      print("please enter the number between 1 to 100");
      continue;
    }

    if(num == ranNum){
      print("Won the game in $attempt attempts");
      break;
    }else if(num < ranNum){
      print("please choose higer number");
    }else{
      print("please choose lower number");
    }
  }

}