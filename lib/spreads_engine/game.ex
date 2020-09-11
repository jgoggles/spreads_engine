defmodule SpreadsEngine.Game do
  alias __MODULE__
  
  @enforce_keys [:date, :week]
  defstruct [:date, :week, :teams]

  def new(date, week), do:
    {:ok, %Game{date: date, week: week, teams: MapSet.new()}}
  
end
