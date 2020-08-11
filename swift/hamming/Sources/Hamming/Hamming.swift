struct Hamming {
  static func compute(_ strand: String, against otherStrand: String) -> Int? {
    guard strand.count == otherStrand.count else { return nil }

    return zip(Array(strand), Array(otherStrand)).reduce(0) { acc, arr in
      guard let acc = acc else { return 0 }

      if arr.0 != arr.1 { return acc + 1 }
      else { return acc }
    }
  }
}
