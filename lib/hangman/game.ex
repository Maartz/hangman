defmodule Hangman.Game do
  # Initial State
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: []
  )

  def new_game() do
    %Hangman.Game{
      letters: Dictionnary.random_words() |> String.codepoints()
    }
  end

  # Make move with guard close btw lost or won
  def make_move(game = %{game_state: state}, _guess) when state in [:won, :lost] do
    {game, tally(game)}
  end

  def make_move(game, guess) do
  end

  def tally(game) do
    12456
  end
end
