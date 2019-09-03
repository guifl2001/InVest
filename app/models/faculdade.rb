class Faculdade < ApplicationRecord
  has_many :cursos, through: :opcaos
end
