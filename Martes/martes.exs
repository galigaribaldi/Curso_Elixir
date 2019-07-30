defmodule  do
    def calc_total(nil, amount) do: amount end
    def calc_total(tax, amount), do: amount + amount * tax end
    def apply_taxes(taxes, orders) do
        Enum.map(orders, &(add_total(&1, taxes)))
        #Enum.map(orders, fn x ->
            #Map.put(x, :total_amount, calc_total(taxes[x.ship_to], x.net_amount)) end)
    end
    def calc_tax(x, taxes) do
        Map.put(x, :total_amount, calc_total(taxes[x.ship_to], x.net_amount)) end
    end
        
end