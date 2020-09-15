defmodule PodemosAprenderWeb.NewDailyTest do
  use PodemosaprenderWeb.FeatureCase, async: true
  import ExUnit.CaptureIO

  @tag :skip
  test "Users can make new daily", %{session: session} do
    user =
      session
      |> visit("/")
      |> click(Query.button("my daily"))

    assert user == Query.find(Query.css(".new_daily"))
  end
end
