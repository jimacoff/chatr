class MessagesController < ApplicationController
  def create
    @chat = current_user.chats.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat

    if current_user.messages << @message
      Pusher.url = ENV['PUSHER_URL']

      Pusher["chatr_channel_#{@chat.id}"].trigger(
        "new_message",
        id: "#{@message.id}",
        user: "#{current_user.email}",
        body: "#{@message.body}",
        time_ago_in_words: "#{@message.created_at}"
      )

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
