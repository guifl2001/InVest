class AddInfosToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :infos, :text
  end
end
