defmodule PhoenixLiveviewFlashComponentsExampleWeb.FirstComponent do
  use PhoenixLiveviewFlashComponentsExampleWeb, :live_component

  alias PhoenixLiveviewFlashComponentsExampleWeb.SecondComponent

  def render(assigns) do
    ~H"""
    <div class="m-2 p-4 border border-blue-800">
      <p>
        First-level component <code class="font-bold">@flash</code>:<br />
        <code><%= inspect(@flash) %></code>
      </p>

      <.button class="m-2 !bg-blue-500 !hover:bg-blue-700" phx-click="click" phx-target={@myself}>
        Click me in the first-level component
      </.button>

      <.live_component module={SecondComponent} id="nested-component" />
    </div>
    """
  end

  def handle_event("click", _params, socket) do
    {:noreply, put_flash(socket, :info, "First-level component button clicked!")}
  end
end
