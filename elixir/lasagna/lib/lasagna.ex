defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(elapsed) do
    expected_minutes_in_oven() - elapsed
  end

  def preparation_time_in_minutes(number_layers) do
    number_layers * 2
  end

  def total_time_in_minutes(number_layers, elapsed) do
    preparation_time_in_minutes(number_layers) + elapsed
  end

  def alarm do
    "Ding!"
  end
end
