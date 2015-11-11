class CreateCar < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.date :purchased_at

      t.timestamps null: false
    end

    add_reference :cars, :person, index: true
    add_foreign_key :cars, :people
  end
end
