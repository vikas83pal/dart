void main() {
  List<int> lt = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var dig in lt) {
    if (dig < 5) {
      print(dig);
    }
  }
}
