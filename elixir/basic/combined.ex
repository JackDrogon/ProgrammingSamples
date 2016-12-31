defmodule Combined do
  def height_to_mph(meters) do
    #Convert.mps_to_mph(Drop.fall_velocity(meters))
    Drop.fall_velocity(meters) |> Convert.mps_to_mph
  end
end
