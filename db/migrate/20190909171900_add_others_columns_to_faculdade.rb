class AddOthersColumnsToFaculdade < ActiveRecord::Migration[5.2]
  def change
    add_column :faculdades, :ranking, :integer
    add_column :faculdades, :nota, :float
  end
end
