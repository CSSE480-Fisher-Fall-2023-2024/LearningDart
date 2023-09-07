void main() {
  print("Functions");
  print("addTwoNumbers(2, 3) = ${addTwoNumbers(2, 3)}");
  print("addThreeNumbers(1, 2, 3) = ${addThreeNumbers(1, 2, 3)}");

  print("divideTwoNumbers(dividend: 5) = ${divideTwoNumbers(dividend: 5)}");
  print(
      "divideTwoNumbers(dividend: 5, divisor: 2) = ${divideTwoNumbers(dividend: 5, divisor: 2)}");
  print(
      "divideTwoNumbers(divisor: 3, dividend: 8) = ${divideTwoNumbers(divisor: 3, dividend: 8)}");

  print("multSomeNumbers(2, 2) = ${multSomeNumbers(2, 2)}");
  print("multSomeNumbers(2, 2, 3) = ${multSomeNumbers(2, 2, 3)}");
  print("multSomeNumbers(2, 2, 1, 7) = ${multSomeNumbers(2, 2, 1, 7)}");

  print("adder(2) = ${adder(2)}");
  print("adder(10, b: 5) = ${adder(10, b: 5)}");
  print("adder(10, c: 4) = ${adder(10, c: 4)}");
  print("adder(10, c:4, b: 10) = ${adder(10, c: 4, b: 10)}");
}

// int addTwoNumbers(int a, int b) {
//   return a + b;
// }
int addTwoNumbers(a, b) {
  return a + b;
}

int addThreeNumbers(a, b, c) => a + b + c;

// most useful Skill (some required, some optional all named)
double divideTwoNumbers({required int dividend, int divisor = 1}) {
  return dividend / divisor;
}

// Least useful skill!!!
int multSomeNumbers(int a, int b, [int c = 1, int d = 2]) {
  return a * b * c * d;
}

// 1 required positional, 2 optional named adder
int adder(int a, {int b = 0, int c = 0}) => a + b + c;
