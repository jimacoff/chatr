class MessageSender
  Pusher.key = ENV['PUSHER_KEY']
  Pusher.secret = ENV['PUSHER_SECRET']
  Pusher.app_id = ENV['PUSHER_APP_ID']

  def initialize(message)
    @message = message
  end

  def send
    data = {
      id: "#{@message.id}",
      user: "#{@message.user.email}",
      body: "#{@message.body}",
      time: "#{@message.created_at.strftime("%I:%M %p")}"
    }

    Pusher["chatr_channel_#{@message.chat_id}"].trigger(
      "new_message",
      data
    )

  end
end
