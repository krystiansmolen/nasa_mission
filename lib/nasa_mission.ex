defmodule NasaMission do
  alias FuelCalculation.{BaseWeight, AdditionalWeight}
  @moduledoc false

  def calculate_total_fuel_weight(mass, coordinates) do
    base_weight = BaseWeight.calculate(mass, coordinates)
    additional_fuel_weight = AdditionalWeight.calculate(base_weight)

    base_weight + additional_fuel_weight
  end
end
