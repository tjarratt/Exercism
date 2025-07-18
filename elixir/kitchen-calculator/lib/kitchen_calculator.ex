defmodule KitchenCalculator do
  def get_volume({_unit, amount}), do: amount

  def to_milliliter(input = {:milliliter, _amount}), do: input
  def to_milliliter({:cup, amount}), do: {:milliliter, amount * 240}
  def to_milliliter({:fluid_ounce, amount}), do: {:milliliter, amount * 30}
  def to_milliliter({:teaspoon, amount}), do: {:milliliter, amount * 5}
  def to_milliliter({:tablespoon, amount}), do: {:milliliter, amount * 15}

  def from_milliliter(volume_pair, :milliliter), do: volume_pair
  def from_milliliter({:milliliter, amount}, unit = :cup), do: {unit, amount / 240.0}
  def from_milliliter({:milliliter, amount}, unit = :fluid_ounce), do: {unit, amount / 30.0}
  def from_milliliter({:milliliter, amount}, unit = :teaspoon), do: {unit, amount / 5.0}
  def from_milliliter({:milliliter, amount}, unit = :tablespoon), do: {unit, amount / 15.0}

  def convert({:teaspoon, amount}, :tablespoon), do: {:tablespoon, amount / 3}
  def convert({:cup, amount}, :fluid_ounce), do: {:fluid_ounce, amount * 8}
  def convert({:fluid_ounce, amount}, :teaspoon), do: {:teaspoon, amount * 6}
  def convert({:tablespoon, amount}, :cup), do: {:cup, amount / 16}
end
