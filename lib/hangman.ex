defmodule Hangman do
  alias Hangman.Game

  # Elixir Macro
  # Delegate the function call to alias
  # Hangman.Game module new_game function
  defdelegate new_game(), to: Game
end
