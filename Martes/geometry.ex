defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end
  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area({:triangle, a,b}) do
    (a*b)/2
  end
  def area(unknown) do
    IO.puts "No se que es eso"
    {:error, {:unknown_shape, unknown}}  
  end
end

#### Geometry.area({rectangle, 4, 5})
###Para cargar los cambios sobre la funcion r Geometry