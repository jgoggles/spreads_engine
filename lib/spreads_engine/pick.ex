defmodule SpreadsEngine.Pick do
  alias __MODULE__

  @enforce_keys [:spread, :team, :game]
  defstruct [:spread, :result, :team, :game]

  def new(spread, team, game), do:
    {:ok, %Pick{spread: spread, team: team, game: game}}
end
