class UserChat < ApplicationRecord
  belongs_to :chat
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :chat, uniqueness: { scope: :user }, presence: true
end
