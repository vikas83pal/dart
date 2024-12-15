void main() {
  List<int> l1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> l2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> res = {};

  for (var i in l1) {
    for (var j in l2) {
      if (i == j) {
        res.add(i);
      }
    }
  }
  print(res.toList());
}
