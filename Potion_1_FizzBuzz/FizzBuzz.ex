defmodule FizzBuzz do
  def evaluate x do
    getFizz x, [ rem(x, 3), rem(x, 5), rem(x, 15) ] 
  end

  defp getFizz x, lst do
    case lst do
      [ 0, 0, 0 ] -> "FizzBuzz"
      [ 0, _, _ ] -> "Fizz"
      [ _, 0, _ ] -> "Buzz"
      [ _, _, _ ] -> x
    end
  end
end

Enum.map 1..100, fn x -> IO.puts FizzBuzz.evaluate x end
