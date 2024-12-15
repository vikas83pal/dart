import 'dart:io';

List<int> removeDuplicate(List<int> num){
  return num.toSet().toList();
}
void main(){
  List<int> num = [1,2,4,2,4,5,4,8,7,4,1,2,3,4,5,8,7,7];

  print("The List is $num");

  List<int> ans = removeDuplicate(num);

  print("The List is $ans");
}