defmodule FuelCalculation.BaseWeight do
  def calculate(ship_mass, [head | tail]) do
    calculate(ship_mass, tail, fuel_mass(ship_mass, head))
  end

  defp calculate(ship_mass, [head | tail], fuel_weight) do
    calculate(ship_mass, tail, fuel_mass(ship_mass, head) + fuel_weight)
  end

  defp calculate(_, [], fuel_weight), do: fuel_weight

  defp fuel_mass(ship_mass, {:launch, planet_gravity}), do: launch_fuel_mass(ship_mass, planet_gravity)
  defp fuel_mass(ship_mass, {:land, planet_gravity}), do: land_fuel_mass(ship_mass, planet_gravity)

  defp launch_fuel_mass(ship_mass, planet_gravity) do
    (ship_mass * planet_gravity * 0.042 - 33) |> floor()
  end

  defp land_fuel_mass(ship_mass, planet_gravity) do
    (ship_mass * planet_gravity * 0.033 - 42) |> floor()
  end
end
