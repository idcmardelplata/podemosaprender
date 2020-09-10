defmodule PodemosAprenderWeb.EnterTheSiteShowTheIndexPage do
  use PodemosaprenderWeb.FeatureCase, async: true

  test "Users can visit the homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css("h1", text: "Welcome to Phoenix!"))
  end

  test "This test is for CI and should fail", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css("h1", text: "Title dont exists"))
  end
end
