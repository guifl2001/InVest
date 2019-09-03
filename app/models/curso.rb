class Curso < ApplicationRecord
  has_many :faculdades, through: :opcaos
end
