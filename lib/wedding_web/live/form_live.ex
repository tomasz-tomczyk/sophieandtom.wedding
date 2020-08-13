defmodule WeddingWeb.FormLive do
  use Phoenix.LiveView
  use Phoenix.HTML

  def handle_event("submit", values, socket) do
    IO.inspect(values)

    fields =
      values
      |> Map.take(["Name", "Attending", "Starter", "Main", "Dessert", "Comments"])
      |> Map.update!("Attending", fn v -> if v == "yes", do: true, else: false end)

    Airtable.create("keyoZttxxYqwvhnGR", "appExcTZ6cT10YKZq", "RSVP", fields: fields)

    {:noreply, assign(socket, :submitted, true)}
  end

  def handle_event("reset", _value, socket) do
    {:noreply, assign(socket, :submitted, false)}
  end

  def mount(_params, assigns, socket) do
    {:ok, assign(socket, :submitted, false)}
  end
end
