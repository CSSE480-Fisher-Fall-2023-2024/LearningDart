void main() {
  print("Collections");
  // list();
  // set();
  map();
}

void map() {
  print("Maps");
  final myMap = <String, int>{};
  myMap["myKey"] = 5;
  print(myMap);
  const myMap2 = {"Dave": 46, "Bob": 51};
  print(myMap2);
}

void set() {
  print("Sets in Dart!");
  final setOfInts = <int>{};
  setOfInts.add(3);
  setOfInts.add(4);
  setOfInts.add(3);
  print(setOfInts);
  const setOfInts2 = {3, 4, 5};
  print(setOfInts2);
}

void list() {
  print("Lists");
  final List<int> scores = [72, 52, 93, 87, 41, 83];
  print(scores);
  scores[3] = 33;
  scores.add(101);
  print(scores);

  var totalPassing = 0;
  for (final score in scores) {
    if (score > 60) {
      totalPassing += 1;
    }
  }

  print("There were $totalPassing scores that passed out of ${scores.length}");

  // Now use an indexed loop - sum up all the even index values.
  var evenIndexSum = 0;
  for (var k = 0; k < scores.length; k = k + 1) {
    if (k % 2 == 0) {
      evenIndexSum += scores[k];
    }
  }
  print("The sum of the even index values is $evenIndexSum");

  // forEach loop
  scores.forEach((element) {
    print(element);
  });

  // forEach loop with the index
  scores.asMap().forEach((key, value) {
    print("$key --> $value");
  });

  // Empty list syntax
  // var emptyList = [];  // Bad since type is unknown!
  final List<int> emptyList = [];
  var emptyList2 = <int>[];
}
