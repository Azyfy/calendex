defmodule CalendexWeb.Admin.EventTypesLive do
  use CalendexWeb, :live_view

  # @impl LiveView
  def mount(_params, _session, socket) do
    {:ok, socket, temporary_assigns: [event_types: []]}
  end
end
