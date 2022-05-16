defmodule CalendexWeb.Admin.NewEventTypeLive do
  use CalendexWeb, :admin_live_view

  alias Calendex.EventType

  def mount(_params, _session, socket) do
    event_type = %EventType{}

    socket =
      socket
      |> assign(section: "event_types")
      |> assign(page_title: "New event type")
      |> assign(event_type: event_type)
      |> assign(changeset: EventType.changeset(event_type, %{}))

    {:ok, socket}
  end
end
