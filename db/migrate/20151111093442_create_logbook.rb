class CreateLogbook < ActiveRecord::Migration
  def change
    create_table :logbooks do |t|
      t.timestamps null: false
    end

    add_reference :logbooks, :car, index: true
    add_foreign_key :logbooks, :cars
  end
end
