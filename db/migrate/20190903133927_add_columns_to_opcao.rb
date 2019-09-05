class AddColumnsToOpcao < ActiveRecord::Migration[5.2]
  def change
    add_column :opcaos, :grau, :string
    add_column :opcaos, :modalidade, :string
    add_column :opcaos, :ano_criacao, :string
    add_column :opcaos, :cc, :integer
    add_column :opcaos, :vagas, :integer
    add_column :opcaos, :enade, :integer
  end
end
