struct Bob {
  static func hey(_ input: String) -> String {
    if input.isAQuestion() { return "Sure." }
    if input.isEmpty()     { return "Fine. Be that way!" }
    if input.isShouting()  { return "Whoa, chill out!" }

    return "Whatever."
  }
}

extension String {
  func isEmpty() -> Bool {
    if count == 0 { return true }

    return allSatisfy { $0.isWhitespace }
  }

  func isShouting() -> Bool {
    guard (contains { $0.isLetter }) else { return false }

    if self == "Fine. Be that way!" { return true }

    return allSatisfy {
      $0.isLetter == false ||
      ($0.isLetter && $0.isUppercase)
    }
  }

  func isAQuestion() -> Bool {
    return isShouting() == false && hasSuffix("?")
  }
}
