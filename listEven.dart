void main() {
  List<int> num = [1, 14, 9, 16, 25, 36, 49, 64, 81, 100];
  Set<int> res = {};
  for (var i in num) {
    if (i % 2 == 0) {
      res.add(i);
    }
  }
  print(res.toList());
}
