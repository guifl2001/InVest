class UserOpcao < ApplicationRecord
  belongs_to :opcao
  belongs_to :user
  validates :opcao, uniqueness: { scope: :user }, presence: true
end
