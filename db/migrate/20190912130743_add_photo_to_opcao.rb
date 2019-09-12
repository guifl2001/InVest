class AddPhotoToOpcao < ActiveRecord::Migration[5.2]
  def change
    add_column :opcaos, :photo, :string
  end
end
