class AddCoordinatesToFaculdades < ActiveRecord::Migration[5.2]
  def change
    add_column :faculdades, :latitude, :float
    add_column :faculdades, :longitude, :float
  end
end
