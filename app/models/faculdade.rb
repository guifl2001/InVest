class Faculdade < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :opcaos
  has_many :cursos, through: :opcaos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
