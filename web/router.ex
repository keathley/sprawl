defmodule Sprawl.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  channel "channel", App.ChatChannel

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Sprawl.PageController, :index, as: :pages
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
