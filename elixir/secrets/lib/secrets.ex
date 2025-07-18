defmodule Secrets do

  def secret_add(secret) do
    fn other -> secret + other end
  end

  def secret_subtract(secret) do
    fn other -> other - secret end
  end

  def secret_multiply(secret) do
    fn other -> other * secret end
  end

  def secret_divide(secret) do
    fn other -> other * 1.0 / secret |> trunc() end
  end

  def secret_and(secret) do
    &Bitwise.band(&1, secret)
  end

  def secret_xor(secret) do
    &Bitwise.bxor(&1, secret)
  end

  def secret_combine(secret_function1, secret_function2) do
    fn other -> 
      other
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
