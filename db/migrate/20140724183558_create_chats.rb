class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
