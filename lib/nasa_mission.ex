defmodule NasaMission do
  alias FuelCalculation.{BaseWeight, AdditionalWeight}
  @moduledoc false

  def calculate_fuel_weight(mass, coordinates) do
    BaseWeight.calculate(mass, coordinates)
  end
end
