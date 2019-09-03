class AddOcdeCursoToOpcao < ActiveRecord::Migration[5.2]
  def change
    add_column :opcaos, :OCDE_curso, :string
  end
end
