class CreateUserOpcaos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_opcaos do |t|
      t.references :opcao, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
