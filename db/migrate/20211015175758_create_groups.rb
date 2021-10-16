class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :summary
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
