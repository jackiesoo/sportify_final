class CreateChatboxes < ActiveRecord::Migration
  def change
    create_table :chatboxes do |t|
      t.references :user, index: true, foreign_key: true
      t.text :comment

      t.timestamps null: false
    end
  end
end
