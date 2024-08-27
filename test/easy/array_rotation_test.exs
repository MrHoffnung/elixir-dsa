defmodule ArrayRotatorTest do
  @int_array [1, 2, 3, 4, 5]
  @string_array ["Hello", "World"]
  @expected_int_array [3, 4, 5, 1, 2]
  @expected_string_array ["World", "Hello"]
  @expected_negative_array [4, 5, 1, 2, 3]
  @k 3
  @nk -3

  use ExUnit.Case
  doctest ArrayRotator

  test "array with integers" do
    assert ArrayRotator.rotate(@int_array, @k) == @expected_int_array
  end

  test "array with strings" do
    assert ArrayRotator.rotate(@string_array, @k) == @expected_string_array
  end

  test "negative k" do
    assert ArrayRotator.rotate(@int_array, @nk) == @expected_negative_array
  end
end
