class AddColumnsToCurso < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :ocde_geral, :string
  end
end
