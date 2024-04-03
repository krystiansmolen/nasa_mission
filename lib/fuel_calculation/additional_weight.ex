defmodule FuelCalculation.AdditionalWeight do
  def calculate(fuel_mass), do: calculate(fuel_mass, 0)

  # For every 9278kg of fuel, rocket gains gains 2960kg of additional fuel
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 9278 do
    indicator = floor(fuel_mass / 9278)

    calculate(fuel_mass - (indicator * 9278), (indicator * 2960) + additional_fuel_mass)
  end

  # For every 2960kg of fuel, rocket gains gains 915kg of additional fuel
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 2960 do
    indicator = floor(fuel_mass / 2960)

    calculate(fuel_mass - (indicator * 2960), (indicator * 915) + additional_fuel_mass)
  end

  # For every 915kg of fuel, rocket gains gains 254kg of additional fuel
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 915 do
    indicator = floor(fuel_mass / 915)

    calculate(fuel_mass - (indicator * 915), (indicator * 254) + additional_fuel_mass)
  end

  # For every 254kg of fuel, rocket gains gains 40kg of additional fuel
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 254 do
    indicator = floor(fuel_mass / 254)

    calculate(fuel_mass - (indicator * 254), (indicator * 40) + additional_fuel_mass)
  end

  # For every 40kg of fuel, rocket gains no more gains additional fuel
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass >= 40  do
    indicator = ceil(fuel_mass / 40)

    calculate(fuel_mass - (indicator * 40), additional_fuel_mass)
  end

  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass <= 0, do: additional_fuel_mass
end
