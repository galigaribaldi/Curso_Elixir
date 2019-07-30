###Funciones anonimas
lambda = fn(x,y,z) -> x*y+z end

###Stream con numeraciones
employ = ["Alice", "Bob", "John"]
#["Alice", "Bob", "John"]
Enum.with_index(employ)
#[{"Alice", 0}, {"Bob", 1}, {"John", 2}]
employ |>
Enum.with_index |>
Enum.each( fn({employ, index})-> IO.puts "#{index + 1}. #{employ}" end)

##############################################################################
#Computo Perezoso
##############################################################################

stream = [1,2,3] |> 
    Stream.map(fn(x) -> 2*x end) |>
    Stream.map(fn(x) -> x*x end)
    Enum.to_list(stream)
    #Enum.take(stream, 1)

##############################################################################
#Pin operator, no poder cambiar le valor de una varibale
##############################################################################
