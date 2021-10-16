class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :age_group
      t.string :password_digest
      t.string :location
      t.date :diagnosis_date
      t.string :image_url

      t.timestamps
    end
  end
end
