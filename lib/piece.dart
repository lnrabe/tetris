final Piece firstPiece = new Piece([
  [1, 1, 1, 1],
]);
final Piece secondPiece = new Piece([
  [0, 1, 1],
  [1, 1, 0],
  [1, 0, 0],
]);

final Piece thirdPiece = new Piece([
  [0, 1, 0],
  [1, 1, 1],
]);

final Piece fourthPiece = new Piece([
  [1, 1, 1],
  [1, 1, 1],
  [1, 1, 1],
]);

final List<Piece> pieces = [firstPiece, secondPiece, thirdPiece, fourthPiece];

class Piece {
  List<List<int>> layout;

  Piece(List<List<int>> tempLayout) {
    this.layout = tempLayout;
  }

  void printLayout() {
    for (var x = 0; x < layout.length; x++) {
      print(layout[x]);
    }
  }
}
