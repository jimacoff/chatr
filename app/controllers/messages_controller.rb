class MessagesController < ApplicationController
  def create
    @chat = current_user.chats.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat

    if current_user.messages << @message
      redirect_to @chat
    else
      render "chats/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
