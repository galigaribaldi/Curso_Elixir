##Operaciones con cadenas
"Galileo Garibaldi" |> String.reverse() |> String.upcase() |> String.split(" ")

###Par o impar
Enum.each(1..10, fn(x) -> rem(x,2) == 0 && IO.puts("Es par") || IO.puts("Es impar") end)