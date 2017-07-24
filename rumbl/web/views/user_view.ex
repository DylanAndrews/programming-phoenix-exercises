# require IEx

defmodule Rumbl.UserView do
  use Rumbl.Web, :view
  alias Rumbl.User

  def first_name(%User{name: name}) do
    # IEx.pry
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
