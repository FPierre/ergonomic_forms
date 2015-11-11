class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamps null: false
    end

    add_reference :orders, :person, index: true
    add_foreign_key :orders, :persons

    add_reference :orders, :car, index: true
    add_foreign_key :orders, :cars
  end
end
