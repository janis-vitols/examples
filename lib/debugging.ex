require IEx

defmodule Debugging do
  def main do
    sum_1 = sum(1, 1)
    sum_2 = sum(2, 3)

    IO.puts "+++Debugging+++"
    IO.puts "Sum of 1 & 1 is #{sum_1}"
    IO.puts "Sum of 2 & 3 is #{sum_2}"
    IO.puts "+++End of debugging"

    multiply(sum_1, sum_2)
  end

  defp sum(a, b) do
    a + b
  end

  defp multiply(a, b) do
    IEx.pry
    a * b
  end
end
