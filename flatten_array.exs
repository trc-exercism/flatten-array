defmodule FlattenArray do
  @doc """
    Accept a list and return the list flattened without nil values.

    ## Examples

      iex> FlattenArray.flatten([1, [2], 3, nil])
      [1,2,3]

      iex> FlattenArray.flatten([nil, nil])
      []

  """

  @spec flatten(list) :: list
  def flatten(list) do
    _flatten(list)
  end

  defp _flatten([head|tail]) do
    _flatten(head) ++ _flatten(tail)
  end
  defp _flatten(nil), do: []
  defp _flatten([]), do: []
  defp _flatten(value), do: [value]

end
