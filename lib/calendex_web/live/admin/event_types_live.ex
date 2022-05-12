defmodule CalendexWeb.Admin.EventTypesLive do
  use CalendexWeb, :admin_live_view

  # @impl LiveView
  def mount(_params, _session, socket) do
    {:ok, socket, temporary_assigns: [event_types: []]}
  end

  @impl LiveView
  def handle_params(_, _, socket) do
    socket =
      socket
      |> assign(section: "event_types")
      |> assign(page_title: "Event types")

    {:noreply, socket}
  end

end
