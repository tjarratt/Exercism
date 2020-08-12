struct DNA {

  let strand: String

  init?(strand: String) {
    guard DNA.isValid(strand) else { return nil }

    self.strand = strand
  }

  func count(_ base: Character) -> Int {
    return strand
                 .filter { $0 == base }
                 .count
  }

  func counts() -> [String: Int] {
    let emptyCounts = ["G": 0, "A": 0, "T": 0, "C": 0]

    return strand.reduce(into: emptyCounts) { counts, letter in
      counts[String(letter), default: 0] += 1
    }
  }

  static private func isValid(_ strand: String) -> Bool {
    return strand.allSatisfy { base in
      switch base {
        case "G":
          return true
        case "A":
          return true
        case "T":
          return true
        case "C":
          return true
        default:
          return false
      }
    }
  }
}
