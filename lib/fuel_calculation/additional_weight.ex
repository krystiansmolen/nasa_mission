defmodule FuelCalculation.AdditionalWeight do
  def calculate(fuel_mass), do: calculate(fuel_mass, 0)

  # Every 9278kg of fuel, mass gains 2960kg
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 9278 do
    indicator = floor(fuel_mass / 9278)

    calculate(fuel_mass - (indicator * 9278), (indicator * 2960) + additional_fuel_mass)
  end

  # Every 2960kg of fuel, mass gains 915kg
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 2960 do
    indicator = floor(fuel_mass / 2960)

    calculate(fuel_mass - (indicator * 2960), (indicator * 915) + additional_fuel_mass)
  end

  # Every 915kg of fuel, mass gains 254kg
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 915 do
    indicator = floor(fuel_mass / 915)

    calculate(fuel_mass - (indicator * 915), (indicator * 254) + additional_fuel_mass)
  end

  # Every 254kg of fuel, mass gains 40kg
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass > 254 do
    indicator = floor(fuel_mass / 254)

    calculate(fuel_mass - (indicator * 254), (indicator * 40) + additional_fuel_mass)
  end

  # Every 40kg of fuel, mass no more gains
  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass >= 40  do
    indicator = ceil(fuel_mass / 40)

    calculate(fuel_mass - (indicator * 40), additional_fuel_mass)
  end

  defp calculate(fuel_mass, additional_fuel_mass) when fuel_mass <= 0, do: additional_fuel_mass
end
