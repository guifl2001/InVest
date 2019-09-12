class AddPhotoToFaculdade < ActiveRecord::Migration[5.2]
  def change
    add_column :faculdades, :photo, :string
  end
end
