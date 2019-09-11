class AddPhotoToCurso < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :photo, :string
  end
end
