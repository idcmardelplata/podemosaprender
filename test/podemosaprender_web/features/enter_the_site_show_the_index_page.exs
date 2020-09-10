defmodule PodemosAprenderWeb.EnterTheSiteShowTheIndexPage do
  use PodemosaprenderWeb.FeatureCase, async: true

  test "Users can visit the homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css("h1", text: "Welcome to Phoenix!"))
  end
end
