Stream.iterate(1,&(&1 + 1)) |>
    Stream.map(&FizzBuzz.fizz_buzz/1)

fb_stream = Stream.iterate(1, &)

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