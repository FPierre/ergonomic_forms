class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :city
      t.string :postal_code
      t.string :thorougfare
      t.text :internal_comment
      t.string :email
      t.string :phone
      t.string :country
      t.string :director_firstname
      t.string :director_lastname

      t.timestamps
    end
  end
end
