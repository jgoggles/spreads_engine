defmodule SpreadsEngine.PickSet do
  alias __MODULE__
  
  @enforce_keys [:picks, :user, :week]
  defstruct [:picks, :user, :week]

  def new(user, week), do:
    {:ok, %PickSet{user: user, week: week, picks: MapSet.new()}}
end
