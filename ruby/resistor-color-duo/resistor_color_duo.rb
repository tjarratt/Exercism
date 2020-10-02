class ResistorColorDuo
  def self.value(args)
    args
      .slice(0, 2)
      .map { |color| mappings[color].to_s }
      .join
      .to_i
  end

  private
  def self.mappings
    [
      "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"
    ].each_with_index.to_h
  end
end
