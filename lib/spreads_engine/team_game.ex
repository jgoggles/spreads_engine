defmodule SpreadsEngine.TeamGame do
  alias __MODULE__

  @enforce_keys [:team, :is_home]
  defstruct [:team, :score, :is_home]

  def new(team, is_home) do
    {:ok, %TeamGame{team: team, is_home: is_home}}
  end

end
