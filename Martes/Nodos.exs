####### Nombre de un proceso
iex --snmae node1@localhost
### nomnbre del segundo proceso
iex --snmae node2@localhost

defmodule StreamBuzz do
    def fizzbuzz(x) do
        Stream.iterate(0, &(&1 + 1)) |>
        Stream.map(fn x ->
            cond do
            rem(x,3) == 0 && rem(x,5) == 0 -> "FizzBuzz"
            rem(x,3) == 0 -> "Fizz"
            rem(x,5) == 0 -> "Buzz"
            true -> x
            end
        end) |>
        Enum.take(x) |>
        Enum.each(&IO.puts/1)
    end
end

Node.spawn(:node2@localhost, fn -> StreamBuzz.fizzbuzz(100) end)

Node.spawn(:node2@localhost, StreamBuzz, :fizzbuzz, [100])