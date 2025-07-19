defmodule FreelancerRates do
  @spec daily_rate(number()) :: float()
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    rate = (100 - discount) / 100

    before_discount * rate
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> (fn rate -> rate * 22 end).()
    |> apply_discount(discount)
    |> Kernel.ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily_rate = hourly_rate |> daily_rate() |> apply_discount(discount)

    budget |> Kernel./(discounted_daily_rate) |> Float.floor(1)
  end
end
