class Curso < ApplicationRecord
  has_many :opcaos
  has_many :faculdades, through: :opcaos
end
