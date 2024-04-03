defmodule NasaMissionTest do
  use ExUnit.Case
  doctest NasaMission

  test "do a flight according to coordinations: launch Earth, land Moon, launch Moon, land Earth" do
    assert NasaMission.calculate_fuel_weight(28801, [{:launch, 9.807}, {:land, 1.62}, {:launch, 1.62}, {:land, 9.807}]) == 51898
  end

  test "do a flight according to coordinations: launch Earth, land Mars, launch Mars, land Earth" do
    assert NasaMission.calculate_fuel_weight(14606, [{:launch, 9.807}, {:land, 3.711}, {:launch, 3.711}, {:land, 9.807}]) == 33388
  end

  test "do a flight according to coordinations: launch Earth, land Moon, launch Moon, land Mars, launch Mars, land Earth" do
    assert NasaMission.calculate_fuel_weight(75432, [{:launch, 9.807}, {:land, 1.62}, {:launch, 1.62}, {:land, 3.711}, {:launch, 3.711}, {:land, 9.807}]) == 212161
  end
end
