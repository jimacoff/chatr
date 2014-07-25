class ChatsController < ApplicationController
  def index
    @chats = current_user.chats
    @page_title = "Your Chats"
  end

  def show
    @chat = Chat.find(params[:id])
    @page_title = @chat.title
    @message = Message.new
  end
end
