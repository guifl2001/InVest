class Chat < ApplicationRecord
  belongs_to :curso
  has_many :user_chats
  has_many :users, through: :user_chats
  has_many :messages, through: :user_chats
end
