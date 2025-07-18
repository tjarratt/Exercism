defmodule TakeANumber do
  def start() do
    spawn(fn -> loop(%{counter: 0}) end)
  end

  defp loop(%{counter: counter}) do
    receive do 
      {:report_state, from} -> 
        send(from, counter)
        loop(%{counter: counter})

      {:take_a_number, from} -> 
        send(from, counter + 1)
        loop(%{counter: counter + 1})

      :stop ->
        nil

      _otherwise ->
        loop(%{counter: counter})
    end
  end
end
