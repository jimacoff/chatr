class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :chat_memberships
  has_many :chats, through: :chat_memberships
  has_many :messages
end
