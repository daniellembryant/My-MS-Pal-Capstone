class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
