require 'MessageSender'

class MessagesController < ApplicationController
  def create
    @chat = current_user.chats.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat

    current_user.messages << @message

    MessageSender.new(@message).send

  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
