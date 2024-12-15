import 'dart:io';

void main() {
  stdout.write("Enter Your Name:");
  String? name;
  while (name == null) {
    name = stdin.readLineSync();
  }
  stdout.write("Enter Your Age :");
  String? agein;
  while (agein == null) {
    agein = stdin.readLineSync();
  }
  try {
    int age = int.parse(agein);
    int yearToHun = 100 - age;
    stdout.write("Hello $name, You have $yearToHun years to be 100");
  } catch (e) {
    stdout.write(e);
  }
}
