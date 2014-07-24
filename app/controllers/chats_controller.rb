class ChatsController < ApplicationController
  def index
    @chats = current_user.chats
  end

  def show
    @chat = Chat.find(params[:id])
  end
end
