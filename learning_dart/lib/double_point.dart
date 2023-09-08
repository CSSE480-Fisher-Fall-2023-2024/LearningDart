class DoublePoint {
  // late double x;  // Works fine, but is the lazy coder solution.
  // late double y;

  // double x = 0;  // For this problem this is a fine solution
  // double y = 0;  // However sometimes it's not so easy to make a default.

  double _x; // Hardest situation
  double y;

  DoublePoint(double x, double y)
      : _x = x * 2,
        y = y * 2;

  // DoublePoint(this.x, this.y);  // Good syntax to know not useful here.
  // DoublePoint({required this.x, required this.y}) {}  // Fun alt syntax

  // @override
  // String toString() {
  //   // return "(${this.x}, ${this.y})";
  //   return "($x, $y)";
  // }

  @override
  String toString() => "($_x, $y)";

  double get x => _x;

  void swap() {
    var temp = y;
    y = _x;
    _x = temp;
  }

  DoublePoint.empty()
      : _x = 0,
        y = 0;
}
