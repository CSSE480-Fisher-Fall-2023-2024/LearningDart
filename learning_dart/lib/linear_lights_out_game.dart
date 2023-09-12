import 'dart:math';

class LinearLightsOutGame {
  List<bool> lightStates = [];
  int moveCounter = 0;

  LinearLightsOutGame(numLights) {
    lightStates = List.filled(numLights, false);
    for (int k = 0; k < 200; k++) {
      pressIndex(Random().nextInt(numLights), allowMovesAfterWin: true);
    }
    if (isWon) {
      pressIndex(Random().nextInt(numLights), allowMovesAfterWin: true);
    }
  }

  void pressIndex(index, {allowMovesAfterWin = false}) {
    if (index < 0 || index >= lightStates.length) {
      return; // Be nice and silently do nothing.
    }
    if (!allowMovesAfterWin && isWon) {
      // Silently do nothing if the game is won already.
      return;
    }

    // TODO: Finish this class. For example increment the moveCounter.

    _toggleLight(index - 1);
    _toggleLight(index);
    _toggleLight(index + 1);
  }

  void _toggleLight(index) {
    if (index < 0 || index >= lightStates.length) {
      return; // Outside the board!
    }
    lightStates[index] = !lightStates[index];
  }

  bool get isWon {
    return !lightStates.contains(true);
  }

  @override
  String toString() {
    return "Moves: $moveCounter isWon: $isWon lights: $lightStates";
  }
}

void main() {
  print("LinearLightsOutGame testing");
  var game = LinearLightsOutGame(5);
  print(game.lightStates);
  print(game);
}
