class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :city
      t.string :thoroughfare
      t.string :postal_code
      t.string :country
      t.integer :gender

      t.timestamps null: false
    end
  end
end
