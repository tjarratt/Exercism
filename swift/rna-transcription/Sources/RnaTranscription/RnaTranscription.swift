struct Nucleotide {
  private let strand: String

  init(_ strand: String) {
    self.strand = strand
  }

  func complementOfDNA() throws -> String {
    return try strand.map({
      switch $0 {
        case "G":
          return "C"
        case "C":
          return "G"
        case "T":
          return "A"
        case "A":
          return "U"
        default:
          let msg = "\($0) is not a valid Nucleotide"
          throw TranscriptionError.invalidNucleotide(message: msg)
      }
    }).joined(separator: "")
  }
}

enum TranscriptionError: Error {
  case invalidNucleotide(message: String)
}
