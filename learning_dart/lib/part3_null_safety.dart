import 'package:flutter/material.dart';

void main() {
  print("Null Safety");

  // double nonNullable = null;  // Obvious crash
  double nonNullable = 17.5;
  double? nullable = null;
  print("$nonNullable $nullable");

  late int oldSchoolVariable;
  if (7 > 6) {
    oldSchoolVariable = 5;
  }
  print(oldSchoolVariable);

  ElevatedButton? b1;
  ElevatedButton b2 = ElevatedButton(onPressed: null, child: Text("b2"));
  var x = 2;
  if (x == 0) {
    b1 = ElevatedButton(onPressed: null, child: null);
  } else if (x == 1) {
    b1 = ElevatedButton(onPressed: null, child: Text("b1"));
  } else {
    b1 = null;
  }
  print("$b1 $b2   ${b1.runtimeType} ${b2.runtimeType}");
  // print("${b1.child} ${b2.child}");  // Doesn't work

  // Always works!
  print(b1);
  print(b1?.child);
  // print(b1.child.data); // We want to do this! But it's not that easy.
  print((b1?.child as Text?)?.data); // Bullet proof!

  // Make a print statement that will crash if the button is null.
  //print((b1!.child as Text?)?.data); // Crash on null button only

  // Make a print statement that will crash only on a null child.
  print((b1?.child as Text).data); // Crash on null child and null button
}
