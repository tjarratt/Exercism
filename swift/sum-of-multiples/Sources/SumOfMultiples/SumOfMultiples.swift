struct SumOfMultiples {
  static func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
    guard limit > 0 else { return 0 }

    var uniqueMultiples: Set<Int> = []

    for m in multiples {
      for i in (1...limit) {
        let multiple = i * m
        if multiple >= limit { break }

        uniqueMultiples.insert(multiple)
      }
    }

    return uniqueMultiples.reduce(0) { accumulator, num in accumulator + num }
  }
}
