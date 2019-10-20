defmodule Hangman.Game do
  # Initial State
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )

  def new_game() do
    %Hangman.Game{
      letters: Dictionnary.random_words() |> String.codepoints()
    }
  end

  # Make move with guard close btw lost or won
  @spec make_move(map, any) :: {map, 12456}
  def make_move(game = %{game_state: state}, _guess) when state in [:won, :lost] do
    {game, tally(game)}
  end

  def make_move(game, guess) do
    game = accept_move(game, guess, MapSet.member?(game.used, guess))
    {game, tally(game)}
  end

  def accept_move(game, guess, _already_guess = true) do
    Map.put(game, :game_state, :already_used)
  end

  def accept_move(game, guess, _already_guess) do
    Map.put(game, :used, MapSet.put(game.used, guess))
  end

  def tally(game) do
    12456
  end
end
