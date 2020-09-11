defmodule SpreadsEngine.Team do
  alias __MODULE__

  @enforce_keys [:location, :nickname]
  defstruct [:location, :nickname, :variants]

  def all() do
    [
      %Team{location: "Denver", nickname: "Broncos", variants: []},
      %Team{location: "Los Angeles", nickname: "Chargers", variants: []}
    ]
  end

  def find_by(key, value) do
    Enum.find(Team.all, fn(team) -> match?(%{^key => ^value}, team) end)
  end

  def full_name(team) do
    "#{team.location} #{team.nickname}"
  end
end
