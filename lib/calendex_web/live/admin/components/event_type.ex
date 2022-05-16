defmodule CalendexWeb.Admin.Components.EventType do
  use CalendexWeb, :live_component

  alias CalendexWeb.Admin.Components.Dropdown

  def mount(socket) do
    {:ok, socket}
  end
end
