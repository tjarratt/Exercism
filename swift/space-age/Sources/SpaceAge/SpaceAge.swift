struct SpaceAge {
  public let seconds: Int
  public let onEarth: Double
  public let onMercury: Double
  public let onMars: Double
  public let onVenus: Double
  public let onJupiter: Double
  public let onSaturn: Double
  public let onUranus: Double
  public let onNeptune: Double

  init(_ seconds: Int) {
    self.seconds = seconds

    onEarth = Double(seconds) / 31557600.0
    onMercury = onEarth / 0.2408467
    onMars = onEarth / 1.8808158
    onVenus = onEarth / 0.61519726
    onJupiter = onEarth / 11.862615
    onSaturn = onEarth / 29.447498
    onUranus = onEarth / 84.016846
    onNeptune = onEarth / 164.79132
  }
}
