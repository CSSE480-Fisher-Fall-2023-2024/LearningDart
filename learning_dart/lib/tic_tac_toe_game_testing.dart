import "package:test/test.dart";
import "tic_tac_toe_game.dart";

void main() {
  late TicTacToeGame game;
  setUp(() {
    game = TicTacToeGame();
  });
  test("Initial Game", () {
    expect(game.state, equals(TicTacToeState.xTurn));
    expect(game.board.length, equals(9));
    expect(game.board[0], equals(TicTacToeMark.none));
    expect(game.board[8], equals(TicTacToeMark.none));
  });

  test("X center", () {
    game.pressedSquare(4);
    expect(game.state, equals(TicTacToeState.oTurn));
    expect(game.board[4], equals(TicTacToeMark.x));
    expect(game.board[0], equals(TicTacToeMark.none));
    expect(game.board[8], equals(TicTacToeMark.none));
  });

  test("X win", () {
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(4);
    expect(game.state, equals(TicTacToeState.oTurn));
    game.pressedSquare(2);
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(0);
    expect(game.state, equals(TicTacToeState.oTurn));
    game.pressedSquare(5);
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(8);
    expect(game.state, equals(TicTacToeState.xWon));
  });

  test("O win", () {
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(0);
    expect(game.state, equals(TicTacToeState.oTurn));
    game.pressedSquare(2);
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(3);
    expect(game.state, equals(TicTacToeState.oTurn));
    game.pressedSquare(5);
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(1);
    expect(game.state, equals(TicTacToeState.oTurn));
    game.pressedSquare(8);
    expect(game.state, equals(TicTacToeState.oWon));
  });

  test("Tie", () {
    game.board = [
      TicTacToeMark.x,
      TicTacToeMark.x,
      TicTacToeMark.o,
      TicTacToeMark.o,
      TicTacToeMark.o,
      TicTacToeMark.x,
      TicTacToeMark.x,
      TicTacToeMark.o,
      TicTacToeMark.none
    ];
    game.pressedSquare(8);
    expect(game.state, equals(TicTacToeState.tie));
  });

  test("Invalid index testing", () {
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(999);
    expect(game.state, equals(TicTacToeState.xTurn));
    game.pressedSquare(-10);
    expect(game.state, equals(TicTacToeState.xTurn));
  });

  test("Beyond a Tie", () {
    game.board = [
      TicTacToeMark.x,
      TicTacToeMark.x,
      TicTacToeMark.o,
      TicTacToeMark.o,
      TicTacToeMark.o,
      TicTacToeMark.x,
      TicTacToeMark.x,
      TicTacToeMark.o,
      TicTacToeMark.none
    ];
    game.pressedSquare(8);
    expect(game.state, equals(TicTacToeState.tie));
    game.pressedSquare(2);
    expect(game.state, equals(TicTacToeState.tie));
    game.pressedSquare(4);
    expect(game.state, equals(TicTacToeState.tie));
  });

  test("Beyond a Win", () {
    game.board = [
      TicTacToeMark.x,
      TicTacToeMark.x,
      TicTacToeMark.none,
      TicTacToeMark.o,
      TicTacToeMark.o,
      TicTacToeMark.none,
      TicTacToeMark.none,
      TicTacToeMark.none,
      TicTacToeMark.none
    ];
    game.pressedSquare(2);
    expect(game.state, equals(TicTacToeState.xWon));
    game.pressedSquare(8);
    expect(game.state, equals(TicTacToeState.xWon));
    game.pressedSquare(1);
    expect(game.state, equals(TicTacToeState.xWon));
  });
}
