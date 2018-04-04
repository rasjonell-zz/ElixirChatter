defmodule ChatterWeb.PageController do
  use ChatterWeb, :controller
  
  alias Chatter.Chats

  def index(conn, _params) do
    messages = Chats.list_messages()
    render conn, "index.html", messages: messages
  end
end
