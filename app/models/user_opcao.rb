class UserOpcao < ApplicationRecord
  belongs_to :opcao
  belongs_to :user
end
