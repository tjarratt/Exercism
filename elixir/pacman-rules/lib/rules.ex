defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    power_pellet_active? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    touching_power_pellet? or touching_dot?
  end

  def lose?(power_pellet_active?, touching_ghost?)
  def lose?(false, true), do: true
  def lose?(_, _), do: false

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?)

  def win?(true, power_pellet_active?, touching_ghost?) do
    not lose?(power_pellet_active?, touching_ghost?)
  end

  def win?(false, _, _), do: false
end
