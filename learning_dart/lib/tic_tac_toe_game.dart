enum TicTacToeMark { x, o, none }

enum TicTacToeState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  final board = List<TicTacToeMark>.filled(9, TicTacToeMark.none);
  var state = TicTacToeState.xTurn;

  String get stateString => state.toString().split(".").last;

  String get boardString {
    var bString = "";
    for (final mark in board) {
      // if (mark == TicTacToeMark.x) {
      //   bString += "X";
      // } else if (mark == TicTacToeMark.o) {
      //   bString += "O";
      // } else {
      //   bString += "-";
      // }
      bString += (mark == TicTacToeMark.x)
          ? "X"
          : ((mark == TicTacToeMark.o) ? "O" : "-");
    }
    return bString;
  }

  // void pressedSquare({required int index}) {
  void pressedSquare(int index) {}

  @override
  String toString() {
    return "$stateString $boardString";
  }
}

void main() {
  print("Quick dev testing!");
  // var someMark = TicTacToeMark.x;
  // print(someMark);
  // var someState = TicTacToeState.xWon;
  // someState = TicTacToeState.tie;
  // print(someState);

  var game = TicTacToeGame();
  // game.board[0] = TicTacToeMark.x;
  // game.board[4] = TicTacToeMark.x;
  // game.board[2] = TicTacToeMark.o;
  // game.board[7] = TicTacToeMark.o;
  // game.state = TicTacToeState.tie;
  // print(game.state);
  // print(game.board);
  print(game);
  game.pressedSquare(0);
  print(game);
  game.pressedSquare(2);
  print(game);
  game.pressedSquare(4);
  print(game);
}
