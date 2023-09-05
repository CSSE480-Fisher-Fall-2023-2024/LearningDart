void main() {
  print("Variables: var const final");
  var myVar1 = 42; // Inferred type
  double myVar2 = 45; // Explicitly typed
  var myVar3;
  myVar3 = "Steve";
  print("Values: $myVar1  $myVar2 $myVar3");
  myVar3 = 55;
  print("Values: $myVar1  $myVar2 $myVar3");
  print(
      "Types ${myVar1.runtimeType}  ${myVar2.runtimeType}  ${myVar3.runtimeType}");

  // Final and const
  final myFinal = myVar1 + 7;
  // myFinal = 5;  // No second assignment!
  print(myFinal);

  const myConst = 9; // Not ok!  value not known at compile time!
  // const myConst = myVar1 + 9;  // Not ok!  value not known at compile time!
  // myConst = 11;  // Can't change!
  print(myConst);

  // var example = const 7;  // Coming soon!
  final int x = 7;
  const double = 5.5;
}
