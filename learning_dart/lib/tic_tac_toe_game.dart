enum TicTacToeMark { x, o, none }

enum TicTacToeState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  var board = List<TicTacToeMark>.filled(9, TicTacToeMark.none);
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
  void pressedSquare(int index) {
    // Check the index to be sure it it 0 to 8.
    // Check if the board square is empty (return silent and do nothing if true)
    if (state == TicTacToeState.xTurn) {
      board[index] = TicTacToeMark.x;
      state = TicTacToeState.oTurn;
      _checkForWin();
    } else if (state == TicTacToeState.oTurn) {
      board[index] = TicTacToeMark.o;
      state = TicTacToeState.xTurn;
      _checkForWin();
    }
  }

  void _checkForWin() {}

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
