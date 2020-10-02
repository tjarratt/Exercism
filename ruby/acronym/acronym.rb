class Acronym
  def self.abbreviate(name)
    name
      .split(/[ -]/)
      .map { |part| part[0] }
      .reject(&:nil?)
      .map(&:upcase)
      .join("")
  end
end
