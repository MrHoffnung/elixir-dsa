defmodule ArrayRotator do
  @moduledoc """
  The ArrayRotator module can right-rotate an array by k places. Its primary method is `rotate/2`.
  """

  @type array :: [integer()]
  @type k :: integer()

  @spec rotate(array :: [integer()], k :: integer()) :: [integer()]
  @doc """
  Right-rotates an array by `k` positions.

  ## Examples
      iex> ArrayRotator.rotate([1, 2, 3], 1)
      [3, 1, 2]
      iex> ArrayRotator.rotate([1, 2, 3], -1)
      [2, 3, 1]
  """
  def rotate(array, k) when is_list(array) and is_integer(k) do
    len = length(array)
    k = rem(k, len)
    {left, right} = Enum.split(array, -k)
    right ++ left
  end

  def rotate(_, _), do: raise(ArgumentError, "Invalid input")
end
