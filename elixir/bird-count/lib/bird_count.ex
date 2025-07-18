defmodule BirdCount do
  def today([]), do: nil
  def today([today | _rest]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count([today | rest]), do: [today + 1 | rest]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _rest]), do: true
  def has_day_without_birds?([_ | rest]) do
    has_day_without_birds?(rest)
  end

  def total([]), do: 0
  def total([head | rest]) do
    head + total(rest)
  end

  def busy_days([]), do: 0
  def busy_days([busy | rest]) when busy >= 5 do
    1 + busy_days(rest)
  end
  def busy_days([_not_busy | rest]), do: busy_days(rest)
end
