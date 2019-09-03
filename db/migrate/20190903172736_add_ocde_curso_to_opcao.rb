class AddOcdeCursoToOpcao < ActiveRecord::Migration[5.2]
  def change
    add_column :opcaos, :ocde_curso, :string
  end
end
