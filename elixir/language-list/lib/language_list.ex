defmodule LanguageList do
  
  @nonfunctional ~w(Java C JavaScript)

  def new(), do: []

  def add(list, language) do
    [language | list]
  end

  def remove([_head | rest]), do: rest

  def first([head | _rest]), do: head

  def count(list), do: length(list)

  def functional_list?(list) do
    List.foldl(list, true, fn lang, acc -> 
      acc && lang not in @nonfunctional
    end)
  end
end
