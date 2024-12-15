import 'dart:io';

void main() {
  print("Enter the word to check palidrome:");
  String? word = stdin.readLineSync();

  if (word != null) {
    String revWord = word.split("").reversed.join("");
    revWord == word
        ? print("$word is a palidrome")
        : print("$word is not a palidrome");
  }
}
