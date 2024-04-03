defmodule FuelCalculation.BaseWeightTest do
  use ExUnit.Case
  doctest NasaMission

  test "land Apollo 11 on Earth" do
    assert FuelCalculation.BaseWeight.calculate(28801, [{:land, 9.807}]) == 9278
  end
end
