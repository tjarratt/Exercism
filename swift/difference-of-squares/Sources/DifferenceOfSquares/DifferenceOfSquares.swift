struct Squares {
  private let num: Int

  init(_ num : Int) {
    self.num = num
  }

  var squareOfSum: Int {
    let sum = (0...num).reduce(0) { x, y in x + y }

    return sum * sum
  }

  var sumOfSquares: Int {
    let squares = (0...num).map { $0 * $0 }

    return squares.reduce(0) { x, y in x + y }
  }

  var differenceOfSquares: Int {
    return squareOfSum - sumOfSquares
  }
}
