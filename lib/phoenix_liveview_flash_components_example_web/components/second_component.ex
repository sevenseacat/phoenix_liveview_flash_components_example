defmodule PhoenixLiveviewFlashComponentsExampleWeb.SecondComponent do
  use PhoenixLiveviewFlashComponentsExampleWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="m-2 p-4 border border-green-800">
      <p>
        Second-level component <code class="font-bold">@flash</code>: <br />
        <code><%= inspect(@flash) %></code>
      </p>

      <.button class="m-2 !bg-green-700 !hover:bg-green-800" phx-click="click" phx-target={@myself}>
        Click me in the second-level component
      </.button>
    </div>
    """
  end

  def handle_event("click", _params, socket) do
    {:noreply, put_flash!(socket, :info, "Second-level component button clicked!")}
  end
end
