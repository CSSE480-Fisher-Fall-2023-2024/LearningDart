enum TicTacToeMark { x, o, none }

enum TicTacToeState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  final board = List<TicTacToeMark>.filled(9, TicTacToeMark.none);
  var state = TicTacToeState.xTurn;
}

void main() {
  print("Quick dev testing!");
  // var someMark = TicTacToeMark.x;
  // print(someMark);
  // var someState = TicTacToeState.xWon;
  // someState = TicTacToeState.tie;
  // print(someState);

  var game = TicTacToeGame();
  // print(game.state);
  // print(game.board);
  print(game);
}
