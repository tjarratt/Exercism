struct Raindrops {
  let n: Int

  init(_ n: Int) {
    self.n = n
  }

  var sounds: String {
    var pieces: [String] = []

    if (n.isMultiple(of: 3)) { pieces.append("Pling") }
    if (n.isMultiple(of: 5)) { pieces.append("Plang") }
    if (n.isMultiple(of: 7)) { pieces.append("Plong") }

    if pieces.isEmpty { return String(n) }

    return pieces.joined(separator: "")
  }
}
