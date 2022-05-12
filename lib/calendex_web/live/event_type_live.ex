defmodule CalendexWeb.EventTypeLive do
  use CalendexWeb, :live_view

  alias CalendexWeb.Components.EventType

  def mount(%{"event_type_slug" => slug}, _session, socket) do

    case Calendex.get_event_type_by_slug(slug) do
      {:ok, event_type} ->
        socket =
          socket
          |> assign(event_type: event_type)
          |> assign(page_title: event_type.name)

        {:ok, socket}

      {:error, :not_found} ->
        {:ok, socket, layout: {CalendexWeb.LayoutView, "not_found.html"}}

    end
  end
end
