struct Hamming {
  static func compute(_ strand: String, against otherStrand: String) -> Int? {
    guard strand.count == otherStrand.count else { return nil }

    return zip(Array(strand), Array(otherStrand))
      .compactMap { this, that in this != that ? 1 : nil }
      .reduce(0, +)
  }
}
