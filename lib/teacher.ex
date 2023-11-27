defmodule Teacher do
  @moduledoc """
  A module that uses `eff_pass` for generating passwords
  using EFF's word lists using
  """

  def shortPass do
    gen_pass(word_length: 4, list: :short)
  end

  def longPASS do
    gen_pass(word_length: 8, list: :long)
  end

  defp gen_pass(word_length: word_length, list: list) do
    pass =
      []
      |> Keyword.merge(words: word_length)
      |> Keyword.merge(list: list)
      |> EFFPass.gen()
    String.replace(pass, " ", "-")
    pass
  end


end
