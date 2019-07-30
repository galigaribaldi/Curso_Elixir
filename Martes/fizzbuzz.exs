Stream.iterate(1,&(&1 + 1)) |>
    Stream.map(&FizzBuzz.fizz_buzz/1)

fb_stream = Stream.iterate(1, &)