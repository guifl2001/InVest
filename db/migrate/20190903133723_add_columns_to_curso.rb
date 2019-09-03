class AddColumnsToCurso < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :OCDE_geral, :string
  end
end
