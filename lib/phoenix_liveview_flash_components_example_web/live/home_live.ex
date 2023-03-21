defmodule PhoenixLiveviewFlashComponentsExampleWeb.HomeLive do
  use PhoenixLiveviewFlashComponentsExampleWeb, :live_view

  alias PhoenixLiveviewFlashComponentsExampleWeb.FirstComponent

  def render(assigns) do
    ~H"""
    <div class="text-center m-2 p-4 -mt-12 border border-red-800">
      <p>
        LiveView <code class="font-bold">@flash</code>:<br />
        <code><%= inspect(@flash) %></code>
      </p>

      <.button class="m-2 !bg-red-700 !hover:bg-red-800" phx-click="click">
        Click me in the LiveView
      </.button>

      <.live_component module={FirstComponent} id="nested-component" />
    </div>
    """
  end

  def handle_event("click", _params, socket) do
    {:noreply, put_flash(socket, :info, "LiveView button clicked!")}
  end
end
