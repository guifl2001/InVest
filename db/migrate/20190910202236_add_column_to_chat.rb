class AddColumnToChat < ActiveRecord::Migration[5.2]
  def change
    add_reference :chats, :user_chat, foreign_key: true
  end
end
