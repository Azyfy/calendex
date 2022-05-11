defmodule CalendexWeb.PageLive do
  use CalendexWeb, :live_view

  # We will implement this module in a minute...
  alias CalendexWeb.Components.EventType

  @impl true
  def mount(_params, _session, socket) do
    event_types = Calendex.available_event_types()

    {:ok, assign(socket, event_types: event_types),
            temporary_assigns: [event_types: []]
    }
  end
end
