class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user_chat, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end