class CreateOpcaos < ActiveRecord::Migration[5.2]
  def change
    create_table :opcaos do |t|
      t.references :faculdade, foreign_key: true
      t.references :curso, foreign_key: true
      t.string :data_inscricao
      t.string :data_prova
      t.integer :ranking

      t.timestamps
    end
  end
end
