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
end
