defmodule GuessingGame do

  def compare(secret, guess \\ :no_guess)

  def compare(secret, guess) when secret == guess, do: "Correct"
  def compare(secret, guess) when abs(secret - guess) == 1, do: "So close"
  
  def compare(secret, guess) when is_number(guess) and guess < secret, do: "Too low"
  def compare(secret, guess) when is_number(guess) and guess > secret, do: "Too high"

  def compare(_secret_number, :no_guess), do: "Make a guess"
end
