import 'double_point.dart';

void main() {
  print("Classes in Dart");
  var pt1 = DoublePoint(3, 5);
  // var pt1 = DoublePoint(x: 3, y: 5);
  print("Point 1: ${pt1.x}  ${pt1.y}"); // Uses the getter method for x.
  // pt1._x = 55;  // Not allowed.  Private!
  print(pt1);
  pt1.swap();
  print(pt1);

  // var pt2 = DoublePoint();
  // print("Point 1: ${pt2.x}  ${pt2.y}");

  var pt3 = DoublePoint.empty();
  print(pt3);
}
