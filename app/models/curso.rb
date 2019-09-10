class Curso < ApplicationRecord
  has_many :opcaos
  has_many :faculdades, through: :opcaos
  has_one :chat
end
