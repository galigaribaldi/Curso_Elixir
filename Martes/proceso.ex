piex = self()
1..100 |> Enum.each(fn x ->
  spawn(fn ->
    send(piex, {:holi, "holi from #{inspect(self())}"})
  end)
end)
##### Para ver los mensajes
flush

##############################################333
receive do
  {:hola, msg}
    -> IO.puts("msg hola: %{msg}")
  {:holi, msg}
    -> IO.puts("msg holi: %{msg}")
end