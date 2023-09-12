import "package:test/test.dart";
import 'package:learning_dart/linear_lights_out_game.dart';

void main() {
  late LinearLightsOutGame game5;
  late LinearLightsOutGame game9;
  setUp(() {
    game5 = LinearLightsOutGame(5);
    game9 = LinearLightsOutGame(9);
  });
  test("Initial Game", () {
    expect(game5.isWon, false);
    expect(game9.isWon, false);
  });
  test("Single middle light press", () {
    game5.lightStates = List<bool>.filled(5, false);
    game5.pressIndex(2, allowMovesAfterWin: true);
    expect(game5.lightStates[0], false);
    expect(game5.lightStates[1], true);
    expect(game5.lightStates[2], true);
    expect(game5.lightStates[3], true);
    expect(game5.lightStates[4], false);

    game9.lightStates = List<bool>.filled(9, true);
    game9.pressIndex(4);
    expect(game9.lightStates[0], true);
    expect(game9.lightStates[1], true);
    expect(game9.lightStates[2], true);
    expect(game9.lightStates[3], false);
    expect(game9.lightStates[4], false);
    expect(game9.lightStates[5], false);
    expect(game9.lightStates[6], true);
    expect(game9.lightStates[7], true);
    expect(game9.lightStates[8], true);
  });
}
