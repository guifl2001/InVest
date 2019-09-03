class AddColumnsToFaculdade < ActiveRecord::Migration[5.2]
  def change
    add_column :faculdades, :sigla, :string
  end
end
