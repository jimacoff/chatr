class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat

  validates :body, presence: true
  validates :chat_id, presence: true
  validates :user_id, presence: true

  default_scope { order(created_at: :asc) }
end
