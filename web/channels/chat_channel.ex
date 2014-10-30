defmodule App.ChatChannel do
  use Phoenix.Channel

  def join(socket, "chat", message) do
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "user:message", message) do
    IO.puts message
    broadcast(socket, "broadcast:message", %{message: message})
    socket
  end
end
